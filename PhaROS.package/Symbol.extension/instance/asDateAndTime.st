*PhaROS
asDateAndTime
	^ self = #now ifTrue: [ DateAndTime now ] ifFalse: [ super asDateAndTime ].