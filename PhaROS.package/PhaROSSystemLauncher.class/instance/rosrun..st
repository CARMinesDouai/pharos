launching
rosrun: anArrayOfArguments
	| process | 
	process :=  ExternalUnixOSProcess 
							forkAndExec:  (PhaROSSystemLauncher path:'rosrun')  
							arguments: anArrayOfArguments
							environment:  nil 
							descriptors: { FileStream stdin . FileStream stdout . FileStream stderr } .  
	process spinForRos: 20.
	^ process. 