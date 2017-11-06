accessing
base_Element: anElement
	| oldElement |
	oldElement := base_Element.
	base_Element := anElement.
	OPUMLToOneLink
		on: self
		thisSelector: #base_Element
		otherSelector: #extension_IssueTag
		updateFrom: oldElement
		to: anElement