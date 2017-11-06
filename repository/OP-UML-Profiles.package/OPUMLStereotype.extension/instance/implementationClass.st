*OP-UML-Profiles
implementationClass
	^ self tags
		at: #implementationClass
		ifAbsent: [ self profile implementationPrefix , self name ]