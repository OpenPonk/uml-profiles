actions
exampleModel
	<gtExample>
	| model classA classB issueTag profile |
	model := OPUmlExamples new emptyModel.
	profile := self class profile.
	model profileApplications
		add:
			(OPUMLProfileApplication new
				uuid: model uuid , '-_profileApplication.0';
				appliedProfile: profile).
	issueTag := profile ownedStereotype detect: [ :each | each name = 'IssueTag' ].
	classA := self classA.
	classA applyStereotype: issueTag implementationClass new.
	classB := self classB.
	classB applyStereotype: issueTag implementationClass new.
	model packagedElements
		add: classA;
		add: classB.
	^ model