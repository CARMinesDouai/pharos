accessing
becomeKnown
	header at: #topic ifPresent:[
		^ PhaROSHSSubscriberHeader withHeader: header.	
	].
	header at:#service ifPresent:[
		^ PhaROSHSServiceClientHeader withHeader: header.	
	].
	self error: 'The header has not any expected shape for incoming headers'.