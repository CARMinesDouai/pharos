versions
version104: spec 
	<version: '1.0.4' imports: #('1.0-baseline') >
	
	spec for: #common do: [ 
		spec blessing: #'v0.1 - after moving most of PhaROS to sthub'.
		spec author: 'NouryBouraqadi'.
		spec timestamp: '12/11/2014 12:07'.
		spec project: 'ROSCatkinDeployer' with: '1.0-baseline'. "bleeding..."
		spec package: 'PhaROSCommander' with: 'PhaROSCommander-NouryBouraqadi.70'.
		spec package: 'PhaROSCommanderTests' with: 'PhaROSCommanderTest-SantiagoBragangolo.1'.
	]