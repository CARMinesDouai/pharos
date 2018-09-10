converting
classAccessor
	

	^ (('{1}', String crlf, String tab, '^{2}' , String crlf) translated format: { name asLowercase . self valueForGeneration })