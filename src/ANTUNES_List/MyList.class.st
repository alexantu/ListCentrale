Class {
	#name : #MyList,
	#superclass : #Object,
	#instVars : [
		'begin',
		'end',
		'size'
	],
	#category : #'ANTUNES_List'
}

{ #category : #accessing }
MyList >> add:aValue [
|node |
node:=MyNode new.
node value:aValue.
(self isEmpty)
 ifTrue: [ 
	begin:=node. ] 
	ifFalse: [ 
		node prevNode: end. 
		end nextNode:node.
		].
	
	end:= node.
	
	size := size+1.
]

{ #category : #accessing }
MyList >> at:aNumber [
|node|
node:=begin. 
1 to:(aNumber-1) do:[:i|
	node:=node nextNode ].
^node value
]

{ #category : #accessing }
MyList >> begin [
^begin
]

{ #category : #accessing }
MyList >> begin:aNode [
begin:=aNode.
]

{ #category : #accessing }
MyList >> end [
^end
]

{ #category : #accessing }
MyList >> end:aNode [
end:=aNode.
]

{ #category : #initialization }
MyList >> initialize [
super initialize.
	size:=0.
]

{ #category : #accessing }
MyList >> isEmpty [
^(size=0)
]

{ #category : #accessing }
MyList >> size [
^size
]
