accessing
status: aStatus
	| previous |
	status = aStatus ifFalse: [
		previous := status.
		status := aStatus.
		callbacks at: status  ifPresent: [ : callsFor | 
			callsFor do: [ : callbck | 	callbck cull: self cull: previous ].
		]
	]