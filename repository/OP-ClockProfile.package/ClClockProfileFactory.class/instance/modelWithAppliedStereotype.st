instance creation
modelWithAppliedStereotype
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