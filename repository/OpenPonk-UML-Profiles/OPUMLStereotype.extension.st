Extension { #name : 'OPUMLStereotype' }

{ #category : '*OpenPonk-UML-Profiles' }
OPUMLStereotype >> implementationClass [

	^ Smalltalk at: self implementationClassName
]

{ #category : '*OpenPonk-UML-Profiles' }
OPUMLStereotype >> implementationClassName [

	^ self tags
		  at: #implementationClassName
		  ifAbsent: [
		  (self profile implementationPrefix , self name) asSymbol ]
]
