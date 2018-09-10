as yet unclassified
checkStamp: aFrame
	self flag: #uncommentThisAndCheckWTFIsgoingONWithSyncro.
	
	
	"	| now st | 
	
	now := DateAndTime now.
	st := aFrame stamp timestamp.
	((aFrame stamp - now) asMilliSeconds < self threshold) ifFalse: [
		self halt.
		PhaROSTFError signal: aFrame name, ' data is too old '.
	]."