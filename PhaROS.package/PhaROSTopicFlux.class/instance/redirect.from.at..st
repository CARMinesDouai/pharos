dispatching
redirect: anAdaptedMessage from: aChannel at: aTimeStamp 
	^ handler receive: anAdaptedMessage from: aChannel at: aTimeStamp .
