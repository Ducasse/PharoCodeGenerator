Extension { #name : #PCGStaticConverterToRealAST }

{ #category : #'*PharoCodeGenerator-Meta' }
PCGStaticConverterToRealAST class >> regenerateVisitMethods [
	<script>
	<metaprogramming>
	PCGProgramNode allSubclasses \ {PCGTemplateParameter. PCGCompositeTemplateParameter}
		select: [ :c | c package = PCGProgramNode package and: [ c subclasses isEmpty ] ]
		thenCollect: [ :class | 
			| classNameWithoutPrefix argument |
			classNameWithoutPrefix := class name allButFirst: 3.
			argument := ((classNameWithoutPrefix first isVowel
				ifTrue: [ 'an' ]
				ifFalse: [ 'a' ]) , classNameWithoutPrefix) asSymbol asPCGArgument.
			(PCGMethodNode
				selector: ('visit' , (class name allButFirst: 3) , ':') asSymbol
				arguments: {argument})
				bodyBlock: [ :body | 
					|factorySelectorKeyword arguments|
					factorySelectorKeyword := Symbol streamContents: [ :s | (self buildFactoryMethodSelectorKeywordsFor: class) do: [ :symbol | s << symbol ] ].
					arguments := class instanceVariablesForRealAST
						collect: [ :instVarName | 
							(class slotNamed: instVarName) type class = CollectionOfType
								ifTrue: [ (argument receiveMessage: instVarName)
										receiveMessage: #collect:
										with:
											((PCGBlockNode arguments: {#toVisit asPCGArgument})
												bodyBlock: [ :blockBody | 
													blockBody
														<< (#self asPCGNode receiveMessage: #visit: with: #toVisit asPCGArgument) ]) ]
								ifFalse: [ #self asPCGNode
												receiveMessage: #visit:
												with: (argument receiveMessage: instVarName) ] ].
					body << (#self asPCGNode receiveMessage: factorySelectorKeyword withAll: arguments) returnIt ];
				protocol: 'visiting';
				installOn: self ]
]
