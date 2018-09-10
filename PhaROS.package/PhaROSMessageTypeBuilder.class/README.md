PhaROSMessageTypeBuilder  named: #blaa package: #ble defined: { 
		UInt8 named: #bla .
		String named: #sarasa .
		FixedArray named: #lala sized: 30 ofType: UInt16.
		ROSType definedBy: 'std_msgs/Header' named: #header.
	}.

Is in charge of generating Ros definition of a type, Pharo definition of the type, and generate the related class in pharo. 