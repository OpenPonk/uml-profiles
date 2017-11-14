*OP-UML-Profiles
implementationClassName
	^ self tags
		at: #implementationClassName
		ifAbsent: [ self profile implementationPrefix , self name ]