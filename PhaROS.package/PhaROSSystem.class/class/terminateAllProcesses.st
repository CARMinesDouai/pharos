cleaning
terminateAllProcesses

	|pb |
	pb := ProcessBrowser new.
	
	"Terminate non-critic processes"	
	pb processList do: [ :p |
			(pb nameAndRulesFor: p) second  
				ifFalse: [ "self inform: 'Nope, won''t kill ' , p name.        ... do nothing"  ] 
				ifTrue: [ pb class terminateProcess: p ].
		 ].
	pb updateProcessList.
	self inform: 'PhaROS processes were terminated.'