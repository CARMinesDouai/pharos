versions
version101: spec 
	<version: '1.0.1' imports: #('1.0-baseline') >
	
	spec for: #common do: [ 
		spec blessing: #'v0.1 - after moving most of PhaROS to sthub'.
		spec author: 'LucFabresse'.
		spec timestamp: '18/06/2014 16:00'.
		spec project: 'ROSCatkinDeployer' with: '1.0-baseline'. "bleeding..."
		spec package: 'PhaROSCommander' with: 'PhaROSCommander-LucFabresse.63'.
		spec package: 'PhaROSCommanderTests' with: 'PhaROSCommanderTest-SantiagoBragangolo.1'.
	]