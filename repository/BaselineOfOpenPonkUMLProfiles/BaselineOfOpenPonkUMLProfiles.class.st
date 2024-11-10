"
Baseline for https://github.com/OpenPonk/uml-profiles
"
Class {
	#name : 'BaselineOfOpenPonkUMLProfiles',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfOpenPonkUMLProfiles',
	#package : 'BaselineOfOpenPonkUMLProfiles'
}

{ #category : 'baselines' }
BaselineOfOpenPonkUMLProfiles >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'OpenPonkUMLMetamodel'
				with: [ spec repository: 'github://openponk/uml-metamodel' ].
			spec package: 'OpenPonk-UML-Profiles' with: [ spec requires: #('UMLMetamodel') ].
			spec package: 'OpenPonk-ClockProfile' with: [ spec requires: #('OP-UML-Profiles') ].
			spec package: 'OpenPonk-IssuesProfile' with: [ spec requires: #('OP-UML-Profiles') ].
			spec group: 'default' with: #('OpenPonk-UML-Profiles' 'OpenPonk-ClockProfile' 'OpenPonk-IssuesProfile') ]
]
