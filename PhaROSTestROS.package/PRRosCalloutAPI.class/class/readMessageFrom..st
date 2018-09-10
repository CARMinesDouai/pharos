utility
readMessageFrom: aProcess
	| output char  |
	
	output := WriteStream on: (String new: 100).
	[true] whileTrue: [ |contents|
		"read while not hogging the CPU"
		[(char := aProcess next) isNil] whileTrue: [Processor yield].
		output nextPut: char.
		"slightly clever testing for end of message"
		((char = $-) and: [contents := output contents. contents endsWith: '---']) ifTrue: [
			"swallow the newline"
			[aProcess next isNil] whileTrue: [Processor yield].
			^(contents copyFrom: 1 to: contents size - 3)]].