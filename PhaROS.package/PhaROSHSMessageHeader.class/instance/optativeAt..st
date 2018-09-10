base-accessing
optativeAt: aKey
	 ^ self header at: aKey ifAbsent: [ nil ].