Extension { #name : #OPUMLStereotype }

{ #category : #'*OP-UML-Profiles' }
OPUMLStereotype >> implementationClass [
	^ self implementationClassName asClass
]

{ #category : #'*OP-UML-Profiles' }
OPUMLStereotype >> implementationClassName [
	^ self tags
		at: #implementationClassName
		ifAbsent: [ self profile implementationPrefix , self name ]
]
