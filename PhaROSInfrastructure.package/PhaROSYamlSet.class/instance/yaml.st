as yet unclassified
yaml 
	 ^ name, ': {', String crlf,  ((',', String crlf) join: (value collect: [ :i | '        ', i yaml ])), String crlf,'}', String crlf