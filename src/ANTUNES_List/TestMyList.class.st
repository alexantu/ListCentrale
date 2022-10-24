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
TestMyList >> testCollect [
|newList list expectedList|
list:=MyList new.

list add:3.
list add:1.
list add: 2.

newList := list collect: [ :each| each*2 ].
expectedList := MyList new.

expectedList add:6.
expectedList add:2.
expectedList add: 4.

self assert: newList equals: expectedList .
]

{ #category : #testing }
TestMyList >> testDo [
|list sum|
list:=MyList new.

list add:3.
list add:1.
list add: 2.

sum :=0.
list do: [ :each| sum:=sum+each ].

self assert: sum equals:6.
]

{ #category : #testing }
TestMyList >> testIsEmpty [
|list|
list:=MyList new.

self assert: list isEmpty equals: true.
]

{ #category : #testing }
TestMyList >> testNotEqual [
|list1 list2|
list1=MyList new.
list2=MyList new.

list1 add:1.
list1 add:3.
list1 add:4.

list2 add:1.
list2 add:1.
list2 add:4.

self deny: list2 equals: list1.
]

{ #category : #testing }
TestMyList >> testNotEqualListDifferentSizes [
|list1 list2|
list1=MyList new.
list2=MyList new.

list1 add:1.
list1 add:3.
list1 add:4.

list2 add:1.
list2 add:1.
list2 add:4.
list2 add:2.
list2 add:3.

list2 equals: list1.

self deny: list2 equals: list1.
]

{ #category : #testing }
TestMyList >> testPrintOn [
|list|
list:=MyList new.

list add:3.
list add:1.
list add: 2.

self assert: list asString equals: '[3,1,2]' .
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
