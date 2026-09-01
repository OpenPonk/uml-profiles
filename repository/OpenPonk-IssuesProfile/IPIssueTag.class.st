"
I represent the 'IssueTag' stereotype applied to a UML Element. I track whether the associated model element has been reviewed by maintaining a `reviewed` boolean property alongside the `base_Element` reference.
"
Class {
	#name : 'IPIssueTag',
	#superclass : 'OPUMLElement',
	#instVars : [
		'base_Element',
		'reviewed'
	],
	#category : 'OpenPonk-IssuesProfile-Metamodel',
	#package : 'OpenPonk-IssuesProfile',
	#tag : 'Metamodel'
}

{ #category : 'accessing' }
IPIssueTag >> base_Element [
	^ base_Element
]

{ #category : 'accessing' }
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

{ #category : 'accessing' }
IPIssueTag >> reviewed [
	^ reviewed ifNil: [ false ]
]

{ #category : 'accessing' }
IPIssueTag >> reviewed: aBoolean [
	reviewed := aBoolean
]

{ #category : 'accessing' }
IPIssueTag >> umlClassName [
	^ 'IssueTag'
]

{ #category : 'accessing' }
IPIssueTag >> umlMetaClass [
	^ IPIssuesProfileFactory metaClassFor: self
]
