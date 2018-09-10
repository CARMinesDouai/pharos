run
stopExternalROSMaster
	masterProcess ifNotNil: [  
		masterProcess sigint.
		masterProcess := nil ]

