versions
version103: spec 
	<version: '1.0.3' imports: #('1.0-baseline') >
	
	spec for: #common do: [ 
		spec blessing: #'v0.1 - after moving most of PhaROS to sthub'.
		spec author: 'LucFabresse'.
		spec timestamp: '23/10/2014 21:40'.
		spec project: 'ROSCatkinDeployer' with: '1.0-baseline'. "bleeding..."
		spec package: 'PhaROSCommander' with: 'PhaROSCommander-NouryBouraqadi.67'.
		spec package: 'PhaROSCommanderTests' with: 'PhaROSCommanderTest-SantiagoBragangolo.1'.
	]