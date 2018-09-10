generating tests
creatorScript
" self new creatorScript "
	(String lf split: (PhaROSSystemLauncher instance rosMsg:'list')) do: 
	
	[ :typeId |
	
	| method |
	method := 
		'test{1}
	| definition | 
	definition :=  browser type: ''{2}''. 
	self assert: definition typeName = ''{2}''.
	self assert: definition md5Sum = ''{3}''.
		' format: {
			typeId copyReplaceAll: '/' with:'_' capitalized .
			typeId .
			PhaROSTypeBrowser instance md5Sum: typeId
		 }.
		
		PhaROSTypeBrowserTests compile: method classified: 'test-', (typeId copyFrom: 1 to: (typeId indexOf: $/)) .
	]
	.
	
	


	"
	PhaROSTypeBrowserTests compile:  classified: 'test'."