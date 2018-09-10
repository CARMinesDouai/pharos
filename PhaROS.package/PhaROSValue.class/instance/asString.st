converting
asString 
	| string  |	
		
	
	string := self class name, '>>', String crlf, String tab.
	values keysAndValuesDo:[
		:key :val |
		string := string , key asString, ':', val asString, ' | '.
	].
	string := string, String crlf.
	
	
		
	^ string.