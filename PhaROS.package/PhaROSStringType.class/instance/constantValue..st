testing
" self new constantValue: ($' asString) "
constantValue: aValue 
	| realValue | 

	realValue := aValue copyReplaceAll: $' asString with:($' asString, $' asString).
	
	^  $' asString , realValue, $' asString.
	