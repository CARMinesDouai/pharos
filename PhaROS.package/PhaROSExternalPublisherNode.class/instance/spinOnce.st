as yet unclassified
spinOnce
	| disconnect |

	[
		[
			[
				socket isConnected ifTrue: [
					stream peek ifNotNil: [
						msg loadStream: stream.
						channel send: msg value.
					].	
				] ifFalse: [
					disconnect := true.
				] 
			]  on: ConnectionClosed  do: [ : ct | disconnect := true. ].
		] on: ConnectionTimedOut do: [ :e | self debug: 'Timeout- '].
	] on: Error do: [: err | self log: err messageText. err signal ].
	
	disconnect ifNotNil: [
		channel unsubscribe: self.
		process cancel.	
		process := nil.
	]