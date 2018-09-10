as yet unclassified
serve
	| socket |

	(socket := (listener waitForAcceptFor: self acceptWaitTimeout)) ifNil: [
		 self noteAcceptWaitTimedOut. 
	 ] ifNotNil: [
		delegate value: socket. 
	].
