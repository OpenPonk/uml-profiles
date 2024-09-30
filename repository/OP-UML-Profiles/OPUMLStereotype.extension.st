Extension { #name : 'OPUMLStereotype' }

{ #category : '*OP-UML-Profiles' }
OPUMLStereotype >> implementationClass [

	^ Smalltalk at: self implementationClassName
]

{ #category : '*OP-UML-Profiles' }
OPUMLStereotype >> implementationClassName [

	^ self tags
		  at: #implementationClassName
		  ifAbsent: [
		  (self profile implementationPrefix , self name) asSymbol ]
]
