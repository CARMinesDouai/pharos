initialize-release
uriFrom: aString
	| newUri |
	newUri := ZnUrl fromString: aString.
	self uri: newUri