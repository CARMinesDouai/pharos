versions
version111: spec 
	<version: '1.1.1' imports: #('1.1-baseline') >
	
	spec for: #common do: [ 
		spec blessing: #'fix proxy'.
		spec author: 'LucFabresse'.
		spec timestamp: '11/4/2015 12:07'.
		spec package: 'PhaROSCommander' with: 'PhaROSCommander-LucFabresse.90'.
	]