actions
metaClassNamed: aClassName
	"	^ OPUMLXMISpecsStorage metaClassNamed: aClassName"

	"I do not retrieve the actual one, because I cannot currently filter what is being displayed (which clutters the diagram. But I keep cache so the same instance is always used"

	^ metaClasses at: aClassName ifAbsentPut: [ OPUMLClass new name: aClassName ]