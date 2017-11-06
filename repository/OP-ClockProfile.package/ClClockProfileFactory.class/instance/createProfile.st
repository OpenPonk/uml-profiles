instance creation
createProfile
	| profile classMetaclass clock clockPair |
	profile := OPUMLProfile new
		name: 'Clock v0.1';
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