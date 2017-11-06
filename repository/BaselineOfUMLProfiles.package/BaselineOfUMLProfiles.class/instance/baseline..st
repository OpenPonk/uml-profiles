baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'UMLMetamodel'
				with: [ spec repository: 'github://openponk/uml-metamodel/repository' ].
			spec package: 'UML-Profiles' with: [ spec requires: #('UMLMetamodel') ].
			spec package: 'OP-ClockProfile' with: [ spec requires: #('UML-Profiles') ].
			spec package: 'OP-IssuesProfile' with: [ spec requires: #('UML-Profiles') ].
			spec group: 'default' with: #('UML-Profiles' 'OP-ClockProfile' 'OP-IssuesProfile') ]