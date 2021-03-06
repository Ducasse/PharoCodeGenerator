"
I am the error created when an AST node is incomplete and can thus not be translated as Pharo's real AST.
"
Class {
	#name : #PCGASTIncompleteForTranslation,
	#superclass : #PCGTranslationError,
	#instVars : [
		'node',
		'unsetInstanceVariable'
	],
	#category : #'PharoCodeGenerator-Errors'
}

{ #category : #'instance creation' }
PCGASTIncompleteForTranslation class >> node: node unsetInstanceVariable: unsetInstanceVariable [ 
	^ self new
		node: node;
		unsetInstanceVariable: unsetInstanceVariable;
		yourself
]

{ #category : #accessing }
PCGASTIncompleteForTranslation >> node [
	^ node
]

{ #category : #accessing }
PCGASTIncompleteForTranslation >> node: anObject [
	node := anObject
]

{ #category : #accessing }
PCGASTIncompleteForTranslation >> unsetInstanceVariable [
	^ unsetInstanceVariable
]

{ #category : #accessing }
PCGASTIncompleteForTranslation >> unsetInstanceVariable: anObject [
	unsetInstanceVariable := anObject
]
