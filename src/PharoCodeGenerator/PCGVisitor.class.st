"
I am an abstract visitor for PCG nodes.
"
Class {
	#name : #PCGVisitor,
	#superclass : #Object,
	#category : #'PharoCodeGenerator-Visitors'
}

{ #category : #visiting }
PCGVisitor class >> visit: aPCGProgramNode [
	^ self new visit: aPCGProgramNode
]

{ #category : #visiting }
PCGVisitor >> visit: anObject [
	<generated>
	^ anObject acceptVisitor: self
]

{ #category : #visiting }
PCGVisitor >> visitArgumentNode: anArgumentNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitArrayNode: anArrayNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitAssignmentNode: anAssignmentNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitBlockNode: aBlockNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitCascadeNode: aCascadeNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitCompositeTemplateParameter: aCompositeTemplateParameter [
	<generated>
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitGlobalNode: aGlobalNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitInstanceVariableNode: aInstanceVariableNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitLiteralArrayNode: aLiteralArrayNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitLiteralValueNode: aLiteralValueNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitMessageNode: aMessageNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitMethodNode: aMethodNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitPragmaNode: aPragmaNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitReturnNode: aReturnNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitSelfNode: aSelfNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitSequenceNode: aSequenceNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitSuperNode: aSuperNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitTemplateParameter: aTemplateParameter [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitTemporaryNode: aTemporaryNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
PCGVisitor >> visitThisContextNode: aThisContextNode [
	^ self subclassResponsibility
]
