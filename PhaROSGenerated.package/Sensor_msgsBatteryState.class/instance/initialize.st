as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self voltage: 0.0. 
	 self current: 0.0. 
	 self charge: 0.0. 
	 self capacity: 0.0. 
	 self design_capacity: 0.0. 
	 self percentage: 0.0. 
	 self power_supply_status: 0. 
	 self power_supply_health: 0. 
	 self power_supply_technology: 0. 
	 self present: false. 
	 self cell_voltage: OrderedCollection new . 
	 self location: ''. 
	 self serial_number: ''. 
