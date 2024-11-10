Extension { #name : 'OPUMLProfile' }

{ #category : '*OpenPonk-UML-Profiles' }
OPUMLProfile >> implementationPackage [
	^ self tagAt: #implementationPackage ifAbsent: [ 'Unclassified' ]
]

{ #category : '*OpenPonk-UML-Profiles' }
OPUMLProfile >> implementationPackage: aName [
	self tagAt: #implementationPackage put: aName
]

{ #category : '*OpenPonk-UML-Profiles' }
OPUMLProfile >> implementationPrefix [
	^ self tagAt: #implementationPrefix ifAbsent: [ 'XYZ' ]
]

{ #category : '*OpenPonk-UML-Profiles' }
OPUMLProfile >> implementationPrefix: aName [
	^ self tagAt: #implementationPrefix put: aName
]
