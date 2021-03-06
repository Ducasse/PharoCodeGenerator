"
I provide the DSL to allow one to build the body of a method / block from the evaluation of a Block.
"
Trait {
	#name : #PCGTBodyBlock,
	#category : #'PharoCodeGenerator-Traits'
}

{ #category : #'instance creation' }
PCGTBodyBlock classSide >> bodyBlock: aBlock [
	^ self new
		bodyBlock: aBlock;
		yourself
]

{ #category : #dsl }
PCGTBodyBlock >> bodyBlock: aBlock [
	| sequence |
	sequence := PCGSequenceNode new.
	aBlock value: sequence.
	self body: sequence
]
