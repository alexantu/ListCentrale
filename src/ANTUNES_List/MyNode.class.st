Class {
	#name : #MyNode,
	#superclass : #Object,
	#instVars : [
		'value',
		'nextNode',
		'prevNode'
	],
	#category : #'ANTUNES_List'
}

{ #category : #initialization }
MyNode >> initialize [
super initialize.
]

{ #category : #accessing }
MyNode >> nextNode [
^nextNode
]

{ #category : #accessing }
MyNode >> nextNode: aNode [
nextNode:=aNode.
]

{ #category : #accessing }
MyNode >> prevNode [
^prevNode
]

{ #category : #accessing }
MyNode >> prevNode: aNode [
prevNode:=aNode.
]

{ #category : #accessing }
MyNode >> value [ 
^value
]

{ #category : #accessing }
MyNode >> value: anObject [
value:=anObject.
]
