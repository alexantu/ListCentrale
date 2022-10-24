Class {
	#name : #MyList,
	#superclass : #Object,
	#instVars : [
		'begin',
		'end',
		'size',
		'aNumber'
	],
	#category : #'ANTUNES_List'
}

{ #category : #accessing }
MyList >> = anObject [
(anObject class=self class) ifFalse: [^false].
1 to: self size do: [ :i| ((self at:i) value=(anObject at:i) value) ifFalse: [ ^false ] ].
^true
]

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

{ #category : #setting }
MyList >> add: anObject at: anIndex [ 
	|node1 node2 node3 cNode|
	anIndex=1 ifTrue: [ 
		 node2:=MyNode new.
		node2 value:anObject.
		node2 nextNode:begin.
		size:=size+1.].
	
	(2<=anIndex) ifTrue: [ (anIndex<=size) ifTrue:[
		cNode:=begin.
		
		1 to: (anIndex-1) do: [:i|
			cNode:=cNode nextNode.].
		
		node3:=cNode.
		node2:=MyNode new.
		node1:= node3 prevNode.
		node3 prevNode: node2.
		node1 nextNode:node2.
		node2 prevNode: node1.
		node2 nextNode: node3.
		node2 value:anObject.
		
		size:=size+1.] ].
	
^self
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
MyList >> collect:aBlock [
|list|

list:=self class new.
self do: [ :each| list add: (aBlock value: each) ].
^list
]

{ #category : #accessing }
MyList >> detect:aBlock [

self do: [ :each| (aBlock value: each) ifTrue:[^each ]].
]

{ #category : #accessing }
MyList >> do:aBlock [
|node|
node:=begin. 
[(node=self end)] whileFalse: [:i|
	node:=node nextNode. 
	aBlock value: node value].
]

{ #category : #accessing }
MyList >> end [
^end
]

{ #category : #accessing }
MyList >> end:aNode [
end:=aNode.
]

{ #category : #accessing }
MyList >> hash [
|hash|
hash := self class hash.
self do: [ :each| hash := hash bitXor: each hash ].
^hash
]

{ #category : #initialization }
MyList >> initialize [
super initialize.
	size:=0.
]

{ #category : #accessing }
MyList >> inject:initialValue into:aBlock [
|nextValue|
nextValue:=initialValue.
self do: [ :each| nextValue:=aBlock value: nextValue value:each ].
^nextValue
]

{ #category : #accessing }
MyList >> isEmpty [
^(size=0)
]

{ #category : #accessing }
MyList >> printOn:aStream [
 aStream nextPut: $[.
 self do: [ :each| aStream nextPutAll: each value asString;
	nextPutAll: $,].
 aStream nextPut: $].
	
]

{ #category : #accessing }
MyList >> reject:aBlock [
|newList|

newList=self class new.
self do: [ :each| (aBlock value: each) ifFalse: [ newList add:each ] ].
^newList
]

{ #category : #setting }
MyList >> removeAt: anIndex [ 
	|newBegin cNode node1 node2|
	anIndex=1 ifTrue: [ 
		newBegin:=begin nextNode.
		begin:=newBegin.
		begin prevNode:nil.
		size=size-1.].
	
	(1<=anIndex) ifTrue: [ (anIndex<=size) ifTrue:[
		cNode:=begin.
		
		1 to: (anIndex-1) do: [:i|
			cNode:=cNode nextNode.].
		
		node1:=cNode prevNode.
		node2:=cNode nextNode.
		node1 nextNode: node2.
		node2 prevNode: node1.
		
		
		size:=size-1.] ].
	
^self
]

{ #category : #accessing }
MyList >> select:aBlock [
|newList|

newList=self class new.
self do: [ :each| (aBlock value: each) ifTrue: [ newList add:each ] ].
^newList
]

{ #category : #accessing }
MyList >> size [
^size
]
