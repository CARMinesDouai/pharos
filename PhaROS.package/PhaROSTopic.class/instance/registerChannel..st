accessing
registerChannel: aChannel
	(self channels anySatisfy: [ : ch | ch owner = aChannel owner and: [ ch isInput = aChannel isInput ]] ) ifTrue: [
		self error: ' There is already a channel for this owner '.	
	].
	channels add: aChannel. 
	^ aChannel.