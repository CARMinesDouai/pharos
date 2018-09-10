as yet unclassified
useTfSensorTo: aRobotFrameID
	| tfSensor | 
	tfSensor := PhaROSLocalizerTFSensor new.
	tfSensor localizer: self nodelets localizer.
	tfSensor robotFrame: aRobotFrameID.
	
	tfSensor rate: 0.35 hz.
	
	self registerLocalizationSensor: tfSensor.