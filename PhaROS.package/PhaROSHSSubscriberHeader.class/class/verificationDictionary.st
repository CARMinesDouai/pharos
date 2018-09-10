verification
verificationDictionary 
	^super verificationDictionary addAll: (
		{ 
			#topic -> ByteString 
		} asDictionary
	); removeKey:#type; yourself.