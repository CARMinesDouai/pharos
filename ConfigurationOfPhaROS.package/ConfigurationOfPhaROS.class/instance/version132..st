versions
version132: spec 
	<version: '1.3.2' imports: #('1.3-baseline') >
	
	spec for: #common do: [ 
		spec blessing: #'v1.3.2'.
		spec author: 'LucFabresse'.
		spec timestamp: '10/04/2015 16:00'.
		spec project: 'XMLRPC' with: '1.01'.
		spec project: 'PaulLePoulpe' with: '1.0.1'.
		spec package: 'PhaROS' with: 'PhaROS-LucFabresse.745'.
	]