activation
realActivate 	
	
	| rmCommand |
	self stdout: 'Update the PhaROSCommander code'.
	
	Gofer it
		smalltalkhubUser: 'CAR' project: 'PhaROS';
		package: 'PhaROSCommander' ;
		update.
	
	self stdout: 'Remove cached images'.
	rmCommand :=  ('rm -fr {1}/Pharo*-PhaROS-*.image {1}/Pharo*-PhaROS-*.changes' 
							format: { Smalltalk imageDirectory pathString }).
	OSProcess command: rmCommand