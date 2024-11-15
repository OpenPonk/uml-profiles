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
				with: [ spec repository: 'github://openponk/uml-metamodel:v4.1.x' ].
			spec package: 'OpenPonk-UML-Profiles' with: [ spec requires: #('OpenPonkUMLMetamodel') ].
			spec package: 'OpenPonk-ClockProfile' with: [ spec requires: #('OpenPonk-UML-Profiles') ].
			spec package: 'OpenPonk-IssuesProfile' with: [ spec requires: #('OpenPonk-UML-Profiles') ].
			spec group: 'default' with: #('OpenPonk-UML-Profiles' 'OpenPonk-ClockProfile' 'OpenPonk-IssuesProfile') ]
]
