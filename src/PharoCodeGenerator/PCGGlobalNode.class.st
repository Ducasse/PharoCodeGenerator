"
I model RBGlobalNode node for generating Pharo code.
I define a lighter API that aims to ease AST nodes composition.
"
Class {
	#name : #PCGGlobalNode,
	#superclass : #PCGVariableNode,
	#traits : 'PCGTAssignmentTarget',
	#classTraits : 'PCGTAssignmentTarget classTrait',
	#category : #'PharoCodeGenerator-AST'
}

{ #category : #visiting }
PCGGlobalNode >> acceptVisitor: aVisitor [
	^ aVisitor visitGlobalNode: self
]

{ #category : #converting }
PCGGlobalNode >> asPCGGlobal [
	^ self
]

{ #category : #testing }
PCGGlobalNode >> isGlobal [
	<generated>
	^ true
]
