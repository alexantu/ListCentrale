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
TestMyList >> testSizeOfEmpty [
|list|
list:=MyList new.

self assert: list size equals: 0.
]
