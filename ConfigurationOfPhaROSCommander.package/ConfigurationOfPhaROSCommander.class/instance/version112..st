versions
version112: spec 
	<version: '1.1.2' imports: #('1.1-baseline') >
	
	spec for: #common do: [ 
		spec blessing: #'new update command'.
		spec author: 'LucFabresse'.
		spec timestamp: '3/5/2015 12:07'.
		spec package: 'PhaROSCommander' with: 'PhaROSCommander-LucFabresse.93'.
	]