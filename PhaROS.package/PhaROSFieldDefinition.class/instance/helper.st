converting
helper
	^ ('add{1}: aValue' , String crlf, String tab, '^ self {2} add: aValue. ', String crlf ) translated format: { (name capitalized copyFrom:1 to: name size -1 ) . name } 