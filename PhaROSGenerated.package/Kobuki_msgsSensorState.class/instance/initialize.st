as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self time_stamp: 0. 
	 self bumper: 0. 
	 self wheel_drop: 0. 
	 self cliff: 0. 
	 self left_encoder: 0. 
	 self right_encoder: 0. 
	 self left_pwm: 0. 
	 self right_pwm: 0. 
	 self buttons: 0. 
	 self charger: 0. 
	 self battery: 0. 
	 self bottom: OrderedCollection new . 
	 self current: OrderedCollection new . 
	 self over_current: 0. 
	 self digital_input: 0. 
	 self analog_input: OrderedCollection new . 
