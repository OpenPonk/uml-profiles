actions
metaClassNamed: aClassName
	"	^ OPUMLXMISpecsStorage metaClassNamed: aClassName"

	"I do not retrieve the actual one, because I cannot currently filter what is being displayed (which clutters the diagram"

	^ OPUMLClass new name: aClassName