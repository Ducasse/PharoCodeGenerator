"
I model RBBlockNode node for generating Pharo code.
I define a lighter API that aims to ease AST nodes composition.
"
Class {
	#name : #PCGBlockNode,
	#superclass : #PCGValueNode,
	#traits : 'PCGTStatementsStream + PCGTBodyBlock + PCGTWithTemporaries + PCGTStatement',
	#classTraits : 'PCGTStatementsStream classTrait + PCGTBodyBlock classTrait + PCGTWithTemporaries classTrait + PCGTStatement classTrait',
	#instVars : [
		'#arguments type: (SequenceableCollection withItemsType: PCGArgumentNode)',
		'#body type: PCGSequenceNode'
	],
	#category : #'PharoCodeGenerator-AST'
}

{ #category : #'instance creation' }
PCGBlockNode class >> arguments: arguments [
	^ self new
		arguments: arguments;
		yourself
]

{ #category : #'instance creation' }
PCGBlockNode class >> arguments: arguments body: body [ 
	^ self new
		arguments: arguments;
		body: body;
		yourself
]

{ #category : #'instance creation' }
PCGBlockNode class >> body: body [ 
	^ self new
		body: body;
		yourself
]

{ #category : #accessing }
PCGBlockNode class >> instanceVariablesForRealAST [
	^ #(#arguments #body)
]

{ #category : #comparing }
PCGBlockNode >> = anObject [
	<generated>
	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ arguments = anObject arguments and: [ body = anObject body ]
]

{ #category : #visiting }
PCGBlockNode >> acceptVisitor: aVisitor [
	^ aVisitor visitBlockNode: self
]

{ #category : #accessing }
PCGBlockNode >> arguments [
	^ arguments
]

{ #category : #accessing }
PCGBlockNode >> arguments: anObject [
	arguments := anObject asOrderedCollection
]

{ #category : #accessing }
PCGBlockNode >> body [
	^ body
]

{ #category : #accessing }
PCGBlockNode >> body: anObject [
	body := anObject
]

{ #category : #comparing }
PCGBlockNode >> hash [
	<generated>
	^ arguments hash bitXor: body hash
]

{ #category : #initialization }
PCGBlockNode >> initialize [
	super initialize.
	self arguments: OrderedCollection new.
]

{ #category : #testing }
PCGBlockNode >> isBlock [
	<generated>
	^ true
]

{ #category : #accessing }
PCGBlockNode >> statements [
	^ self body statements
]

{ #category : #accessing }
PCGBlockNode >> temporaries [
	^ self body temporaries
]
