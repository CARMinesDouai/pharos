ROSType message named: #blaa package: #ble defined: { 
		UInt8 named: #bla .
		String named: #sarasa .
		FixedArray named: #lala sized: 30 ofType: UInt16.
		ROSType definedBy: 'std_msgs/Header' named: #header.
	}.
	
ROSType definedBy: 'std_msgs/Header' named: #header.
	
	ROSType service named: #bla package: #lala request:{
		UInt8 named: #bla .
		String named: #sarasa .
		FixedArray named: #lala sized: 30 ofType: UInt16.
	} response: { 
		UInt8 named: #bla .
		String named: #sarasa .
		FixedArray named: #lala sized: 30 ofType: UInt16.
	}.
	