"
Baseline for https://github.com/OpenPonk/uml-profiles
"
Class {
	#name : 'BaselineOfUMLProfiles',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfUMLProfiles',
	#package : 'BaselineOfUMLProfiles'
}

{ #category : 'baselines' }
BaselineOfUMLProfiles >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'UMLMetamodel'
				with: [ spec repository: 'github://openponk/uml-metamodel/repository' ].
			spec package: 'OP-UML-Profiles' with: [ spec requires: #('UMLMetamodel') ].
			spec package: 'OP-ClockProfile' with: [ spec requires: #('OP-UML-Profiles') ].
			spec package: 'OP-IssuesProfile' with: [ spec requires: #('OP-UML-Profiles') ].
			spec group: 'default' with: #('OP-UML-Profiles' 'OP-ClockProfile' 'OP-IssuesProfile') ]
]
