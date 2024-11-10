Extension { #name : 'OPUMLClass' }

{ #category : '*OpenPonk-ClockProfile-Metamodel' }
OPUMLClass >> extension_Clock [
	^ self tagAt: #extension_Clock ifAbsent: [ nil ]
]

{ #category : '*OpenPonk-ClockProfile-Metamodel' }
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
