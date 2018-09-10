as yet unclassified
helpText
	
	^String streamContents: [  :s |
		|commandsHandlers max|
		commandsHandlers := self allHandlers reject:  [ :c | c = self class ].
		s << 'pharos usage:'; lf.

		max:=0.
		commandsHandlers do: [ :h |
			max :=  h commandName size max: max.
		].

		commandsHandlers do: [ :h |
			s tab << 'pharos ' << h commandName.
			(max - h commandName size) timesRepeat: [ s nextPut: Character space ]. 
			s tab << h shortHelpText ; lf
		]
	] 
	 