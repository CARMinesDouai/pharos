converting
setter
	^ ('{1}: aValue' , String crlf, String tab, '^ self at: #{1} put: aValue. ', String crlf ) translated format: { name }