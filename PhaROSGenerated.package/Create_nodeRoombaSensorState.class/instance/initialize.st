as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self bumps_wheeldrops: 0. 
	 self wall: false. 
	 self cliff_left: false. 
	 self cliff_front_left: false. 
	 self cliff_front_right: false. 
	 self cliff_right: false. 
	 self virtual_wall: false. 
	 self motor_overcurrents: 0. 
	 self dirt_detector_left: 0. 
	 self dirt_detector_right: 0. 
	 self remote_opcode: 0. 
	 self buttons: 0. 
	 self distance: 0. 
	 self angle: 0. 
	 self charging_state: 0. 
	 self voltage: 0. 
	 self current: 0. 
	 self temperature: 0. 
	 self charge: 0. 
	 self capacity: 0. 
