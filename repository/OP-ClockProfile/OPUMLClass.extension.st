Extension { #name : #OPUMLClass }

{ #category : #'*OP-ClockProfile-Metamodel' }
OPUMLClass >> extension_Clock [
	^ self tagAt: #extension_Clock ifAbsent: [ nil ]
]

{ #category : #'*OP-ClockProfile-Metamodel' }
OPUMLClass >> extension_Clock: aClock [
	| oldClock |
	oldClock := self extension_Clock.
	self tagAt: #extension_Clock put: aClock.
	OPUMLToOneLink
		on: self
		thisSelector: #extension_Clock
		otherSelector: #base_Class
		updateFrom: oldClock
		to: aClock
]
