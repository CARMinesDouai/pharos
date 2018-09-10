childs
findOrCreateParam: aName
	^ childs detect: [:c | c name = aName ] ifNone: [self param name: aName; yourself].