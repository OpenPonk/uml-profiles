Extension { #name : #OPUMLProfile }

{ #category : #'*OP-UML-Profiles' }
OPUMLProfile >> implementationPackage [
	^ self tagAt: #implementationPackage ifAbsent: [ 'Unclassified' ]
]

{ #category : #'*OP-UML-Profiles' }
OPUMLProfile >> implementationPackage: aName [
	self tagAt: #implementationPackage put: aName
]

{ #category : #'*OP-UML-Profiles' }
OPUMLProfile >> implementationPrefix [
	^ self tagAt: #implementationPrefix ifAbsent: [ 'XYZ' ]
]

{ #category : #'*OP-UML-Profiles' }
OPUMLProfile >> implementationPrefix: aName [
	^ self tagAt: #implementationPrefix put: aName
]
