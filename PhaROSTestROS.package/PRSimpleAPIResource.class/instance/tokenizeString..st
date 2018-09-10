utilities
tokenizeString: aString
	^aString findTokens: { Character cr. Character lf.  Character tab. Character space}