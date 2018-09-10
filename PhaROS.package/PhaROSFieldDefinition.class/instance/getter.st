converting
getter 
	^ ('{1}' , String crlf, String tab, '^ self getAt: #{1}. ', String crlf) translated format: { name}