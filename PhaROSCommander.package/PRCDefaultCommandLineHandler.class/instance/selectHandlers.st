as yet unclassified
selectHandlers
	| handlers |
	handlers := (self subCommandsRoot selectHandlersFor: commandLine).
	handlers := handlers sort: [ :a :b | a priority >= b priority ].
	^ handlers