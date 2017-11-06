actions
classB
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