"
I represent the 'Clock' stereotype applied to a UML Class. I extend the base model class with system environment properties such as `osVersion` and `posixCompliant`.
"
Class {
	#name : 'ClClock',
	#superclass : 'Object',
	#instVars : [
		'osVersion',
		'posixCompliant',
		'base_Class'
	],
	#category : 'OpenPonk-ClockProfile-Metamodel',
	#package : 'OpenPonk-ClockProfile',
	#tag : 'Metamodel'
}

{ #category : 'accessing' }
ClClock >> base_Class [
	^ base_Class
]

{ #category : 'accessing' }
ClClock >> base_Class: aClass [
	| oldClass |
	oldClass := base_Class.
	base_Class := aClass.
	OPUMLToOneLink
		on: self
		thisSelector: #base_Class
		otherSelector: #extension_Clock
		updateFrom: oldClass
		to: aClass
]

{ #category : 'accessing' }
ClClock >> osVersion [
	^ osVersion
]

{ #category : 'accessing' }
ClClock >> osVersion: aString [
	osVersion := aString
]

{ #category : 'accessing' }
ClClock >> posixCompliant [
	^ posixCompliant ifNil: [ false ]
]

{ #category : 'accessing' }
ClClock >> posixCompliant: aBoolean [
	posixCompliant := aBoolean
]

{ #category : 'accessing' }
ClClock >> umlClassName [
	^ 'Clock'
]

{ #category : 'accessing' }
ClClock >> umlMetaClass [
	^ ClClockProfileFactory metaClassFor: self
]
