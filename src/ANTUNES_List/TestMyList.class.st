Class {
	#name : #TestMyList,
	#superclass : #TestCase,
	#category : #'ANTUNES_List'
}

{ #category : #testing }
TestMyList >> testAdd [
|list|
list:=MyList new.

list add:'hello'.
list add: 'again'.

self assert: list size equals: 2.
]

{ #category : #testing }
TestMyList >> testAddAt [
|list|
list:=MyList new.

list add:'hello'.
list add: 'again'.
list add: 'here' at:2.

self assert: list size equals: 3.
self assert: (list at: 2) equals: 'here'.
]

{ #category : #testing }
TestMyList >> testAddSetsNextNode [
|list|
list:=MyList new.

list add:'hello'.
list add: 'again'.

self assert: list begin nextNode value equals: 'again'.
]

{ #category : #testing }
TestMyList >> testAddSetsPreviousNode [
|list|
list:=MyList new.

list add:'hello'.
list add: 'again'.

self assert: list end prevNode value equals: 'hello'.
]

{ #category : #testing }
TestMyList >> testAt [
|list|
list:=MyList new.
list add:3.
list add:2.

self assert: (list at: 2) equals: 2.
]

{ #category : #testing }
TestMyList >> testIsEmpty [
|list|
list:=MyList new.

self assert: list isEmpty equals: true.
]

{ #category : #testing }
TestMyList >> testRemoveAt [
|list|
list:=MyList new.

list add:'hello'.
list add: 'again'.
list add: 'here' at:2.
list add: 3 at:2.
list add: 4 at: 1.

self assert: list size equals: 5.

list removeAt:2.

self assert: list size equals: 4.
]

{ #category : #testing }
TestMyList >> testSizeOfEmpty [
|list|
list:=MyList new.

self assert: list size equals: 0.
]
