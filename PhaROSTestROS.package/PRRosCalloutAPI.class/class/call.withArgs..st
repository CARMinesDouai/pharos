services
call: aService withArgs: someArguments
	
	OSProcess waitForCommand: 'rosservice call ', aService , '  ', someArguments. 