browsing
browseAll
	| stdout |
	
	stdout :=  FileStream stdout
			wantsLineEndConversion: true;
			converter; "Force lazy initialization of converter"
			yourself.

	(String lf split: (PhaROSSystemLauncher instance rosMsg:'list'))  do: [ :typeId | 
		typeId ~= '' ifTrue:[
			stdout nextPutAll: typeId, String crlf .
			(PhaROSTypeBrowser instance type: typeId) md5Sum ]].