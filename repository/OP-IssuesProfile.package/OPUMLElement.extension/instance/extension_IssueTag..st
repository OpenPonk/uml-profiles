*OP-IssuesProfile
extension_IssueTag: anIssueTag
	| oldIssueTag |
	oldIssueTag := self extension_IssueTag.
	self tagAt: #extension_IssueTag put: anIssueTag.
	OPUMLToOneLink
		on: self
		thisSelector: #extension_IssueTag
		otherSelector: #base_Element
		updateFrom: oldIssueTag
		to: anIssueTag