as yet unclassified
named: aCallerId subscriberOf: aTopic with: aSocket
	^self new 	name: aCallerId; 
				topic: aTopic; 
				socket: aSocket; 
				yourself.