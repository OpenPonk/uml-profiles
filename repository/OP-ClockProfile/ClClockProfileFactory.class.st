Class {
	#name : #ClClockProfileFactory,
	#superclass : #OPUmlCustomProfile,
	#category : #'OP-ClockProfile-Model'
}

{ #category : #'instance creation' }
ClClockProfileFactory >> createProfile [
	| profile classMetaclass clock clockPair |
	profile := OPUMLProfile new
		name: 'Clock';
		uuid: '_0';
		URI: 'http://www.example.com/Clock/0.1';
		implementationPackage: 'ClockProfile';
		implementationPrefix: 'Cl'.
	classMetaclass := self metaClassNamed: 'Class'.
	clockPair := self newStereotype: 'Clock' to: classMetaclass.
	profile packagedElements addAll: clockPair.
	clock := clockPair first.
	OPUMLProperty new
		name: 'osVersion';
		uuid: clock uuid , '-osVersion';
		owningClass: clock;
		type: (OPUMLPrimitiveType new name: 'String').
	"OPUMLProperty new
		name: 'startOperation';
		uuid: clock uuid , '-startOperation';
		owningClass: clock;
		type: (OPUMLClass new name: 'Operation')."
	OPUMLProperty new
		name: 'posixCompliant';
		uuid: clock uuid , '-posixCompliant';
		owningClass: clock;
		type: (OPUMLPrimitiveType new name: 'Boolean').
	profile ownedStereotype do: [ :each | each profile: profile ].
	^ profile
]

{ #category : #'instance creation' }
ClClockProfileFactory >> modelWithAppliedStereotype [
	<gtExample>
	| model class profile |
	model := OPUmlExamples new emptyModel.
	profile := self class profile.
	model profileApplications
		add:
			(OPUMLProfileApplication new
				uuid: model uuid , '-_profileApplication.0';
				appliedProfile: profile).
	class := OPUMLClass new name: 'StopWatch'.
	class
		applyStereotype:
			(profile packagedElements detect: [ :each | each name = 'Clock' ])
				implementationClass new.
	model packagedElements add: class.
	^ model
]

{ #category : #'instance creation' }
ClClockProfileFactory >> openExample [
	<script: 'self new openExample'>
	OPProject openOnModel: self modelWithAppliedStereotype
]

{ #category : #'instance creation' }
ClClockProfileFactory >> openProfile [
	<script: 'self new openProfile'>
	OPProject openOnModel: self class profile
]

{ #category : #'instance creation' }
ClClockProfileFactory >> reset [
	<script: 'self reset'>
	self class reset
]
