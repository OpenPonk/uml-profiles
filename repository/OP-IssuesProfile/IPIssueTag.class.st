Class {
	#name : #IPIssueTag,
	#superclass : #OPUMLElement,
	#instVars : [
		'base_Element',
		'reviewed'
	],
	#category : 'OP-IssuesProfile-Metamodel'
}

{ #category : #accessing }
IPIssueTag >> base_Element [
	^ base_Element
]

{ #category : #accessing }
IPIssueTag >> base_Element: anElement [
	| oldElement |
	oldElement := base_Element.
	base_Element := anElement.
	OPUMLToOneLink
		on: self
		thisSelector: #base_Element
		otherSelector: #extension_IssueTag
		updateFrom: oldElement
		to: anElement
]

{ #category : #accessing }
IPIssueTag >> reviewed [
	^ reviewed ifNil: [ false ]
]

{ #category : #accessing }
IPIssueTag >> reviewed: aBoolean [
	reviewed := aBoolean
]

{ #category : #accessing }
IPIssueTag >> umlClassName [
	^ 'IssueTag'
]

{ #category : #accessing }
IPIssueTag >> umlMetaClass [
	^ IPIssuesProfileFactory metaClassFor: self
]
