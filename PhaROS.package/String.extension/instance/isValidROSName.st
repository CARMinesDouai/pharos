*PhaROS
isValidROSName
	"Checks if is a valid ROS name for a topic, a node or parameter 
http://wiki.ros.org/Names | http://www.cse.sc.edu/~jokane/agitr/agitr-letter-names.pdf
This implementation does not care about private names (those which starts with ~)-
 
Not valid:  'kompai1/scan' isValidROSName 
Not valid:  '/kompai1/1scan' isValidROSName
Not valid:  '/kompai1/scan$' isValidROSName
Valid: '/kompai1/scan' isValidROSName
"

	| containsJustAlphaNumericOrUnderscore names |
	containsJustAlphaNumericOrUnderscore := [ :str | (str reject: [ :ch | ch isAlphaNumeric or: [ ch = $_ ] ]) isEmpty ].	
	" First character should be '/' "
	self first = $/.	
	" Then, all names should start with a letter and then just alphanumerics or underscore are allowed  "
	names := ($/ split: self) reject: #isEmpty.
	^ (names
		reject: [ :name | 
			name first isLetter
				and: [ 
					name size > 1
						ifTrue: [ containsJustAlphaNumericOrUnderscore value: (name copyFrom: 2 to: name size) ] ] ]) isEmpty