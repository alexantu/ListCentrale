Class {
	#name : #MyList,
	#superclass : #Object,
	#instVars : [
		'begin',
		'end'
	],
	#category : #'ANTUNES_List'
}

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
]
