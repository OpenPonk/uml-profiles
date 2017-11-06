actions
classA
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