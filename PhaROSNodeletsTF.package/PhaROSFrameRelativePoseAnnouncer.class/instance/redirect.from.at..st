as yet unclassified
redirect: anAdaptedMessage from: aChannel at: aTimeStamp 
	handler do: [
		: cb |
		cb cull: anAdaptedMessage cull: aChannel cull: aTimeStamp.	
	].