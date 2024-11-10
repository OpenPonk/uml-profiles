Class {
	#name : 'OPUmlCustomProfile',
	#superclass : 'Object',
	#instVars : [
		'metaClasses'
	],
	#classInstVars : [
		'profile',
		'metaClassMap'
	],
	#category : 'OpenPonk-UML-Profiles',
	#package : 'OpenPonk-UML-Profiles'
}

{ #category : 'accessing' }
OPUmlCustomProfile class >> metaClassFor: anElement [
	"
	metaClassMap := nil
	"

	metaClassMap
		ifNil: [ metaClassMap := (self profile ownedStereotype collect: [ :each | each name -> each ])
				asDictionary ].
	^ metaClassMap at: anElement umlClassName
]

{ #category : 'accessing' }
OPUmlCustomProfile class >> profile [
	<script: 'self profile inspect'>
	^ profile ifNil: [ profile := self new createProfile ]
]

{ #category : 'accessing' }
OPUmlCustomProfile class >> reset [
	<script>
	profile := nil.
	metaClassMap := nil
]

{ #category : 'actions' }
OPUmlCustomProfile >> createProfile [
	^ self subclassResponsibility
]

{ #category : 'actions' }
OPUmlCustomProfile >> initialize [
	super initialize.
	metaClasses := Dictionary new
]

{ #category : 'actions' }
OPUmlCustomProfile >> metaClassNamed: aClassName [
	^ OPUMLXMISpecsStorage metaClassNamed: aClassName
]

{ #category : 'instance creation' }
OPUmlCustomProfile >> newStereotype: aName to: aBaseClass [
	^ self newStereotype: aName to: aBaseClass optional: true
]

{ #category : 'instance creation' }
OPUmlCustomProfile >> newStereotype: aName to: aBaseClass optional: isOptional [
	| stereotype baseName extension baseProperty extensionProperty |
	baseName := aBaseClass name.
	stereotype := OPUMLStereotype new name: aName.
	stereotype uuid: stereotype name.
	extension := OPUMLExtension new.
	extension name: baseName , '_' , aName.
	extension uuid: extension name.
	(baseProperty := OPUMLProperty new)
		name: 'base_' , baseName;
		uuid: stereotype uuid , '-' , baseProperty name;
		owningClass: stereotype;
		type: aBaseClass.
	(extensionProperty := OPUMLProperty new)
		name: 'extension_' , stereotype name;
		uuid: extension uuid , '-' , extensionProperty name;
		owningAssociation: extension;
		aggregation: OPUMLAggregationKind composite;
		type: stereotype.
	extension
		memberEnds:
			{baseProperty.
			extensionProperty}.
	extension ownedEnd: extensionProperty.
	extensionProperty
		lowerValue:
			(OPUMLLiteralInteger new
				value:
					(isOptional
						ifTrue: [ 0 ]
						ifFalse: [ 1 ]);
				uuid: extensionProperty uuid , '-_lowerValue').
	^ {stereotype.
	extension}
]
