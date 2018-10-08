Class {
	#name : #IPIssuesProfileFactory,
	#superclass : #OPUmlCustomProfile,
	#category : 'OP-IssuesProfile-Model'
}

{ #category : #actions }
IPIssuesProfileFactory >> classA [
	<gtExample>
	| classA |
	classA := OPUMLClass new
		name: 'A';
		uuid: 'A'.
	OPUMLProperty new
		name: 'width';
		uuid: classA uuid , '-width';
		owningClass: classA.
	OPUMLProperty new
		name: 'length';
		uuid: classA uuid , '-reviewed';
		owningClass: classA.
	^ classA
]

{ #category : #actions }
IPIssuesProfileFactory >> classB [
	<gtExample>
	| classB |
	classB := OPUMLClass new
		name: 'B';
		uuid: 'B'.
	OPUMLProperty new
		name: 'x';
		uuid: classB uuid , '-x';
		type: (OPUMLPrimitiveType new name: 'String');
		owningClass: classB.
	OPUMLProperty new
		name: 'y';
		uuid: classB uuid , '-y';
		owningClass: classB.
	^ classB
]

{ #category : #actions }
IPIssuesProfileFactory >> createProfile [
	| profile elementMetaclass associationMetaclass issueTag importedPackage packageImport |
	profile := OPUMLProfile new
		name: 'IssuesProfile';
		uuid: '_0';
		URI: 'http://www.example.com/IssuesProfile/0.0';
		implementationPackage: 'IssuesProfile';
		implementationPrefix: 'IP'.
	importedPackage := OPUMLXMISpecsStorage umlMetamodel.
	packageImport := OPUMLPackageImport new
		uuid: '_packageImport.0';
		importedPackage: importedPackage.
	profile packageImports add: packageImport.
	profile metamodelReferences add: packageImport.
	elementMetaclass := self metaClassNamed: 'Element'.
	profile packagedElements addAll: (self newStereotype: #IssueTag to: elementMetaclass).
	issueTag := profile packagedElements detect: [ :e | e name = #IssueTag ].
	issueTag profile: profile.
	OPUMLProperty new
		name: 'reviewed';
		uuid: issueTag uuid , '-reviewed';
		owningClass: issueTag;
		type: (OPUMLPrimitiveType new name: 'Boolean');
		defaultValue:
			(OPUMLLiteralBoolean new
				value: false;
				uuid: issueTag uuid , '-reviewed-_defaultValue').
	associationMetaclass := OPUMLClass new name: 'Association'.
	^ profile
]

{ #category : #actions }
IPIssuesProfileFactory >> exampleModel [
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
]

{ #category : #actions }
IPIssuesProfileFactory >> openExample [
	<script: 'self new openExample'>
	OPUmlProject openOnModel: self exampleModel
]

{ #category : #actions }
IPIssuesProfileFactory >> openProfile [
	<script: 'self new openProfile'>
	OPUmlProject openOnModel: self class profile
]
