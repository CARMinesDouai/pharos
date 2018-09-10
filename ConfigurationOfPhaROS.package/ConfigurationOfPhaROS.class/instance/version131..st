versions
version131: spec 
	<version: '1.3.1' imports: #('1.3-baseline') >
	
	spec for: #common do: [ 
		spec blessing: #'v1.3.1'.
		spec author: 'LucFabresse'.
		spec timestamp: '26/01/2015 16:00'.
		spec project: 'XMLRPC' with: '1.01'.
		spec project: 'PaulLePoulpe' with: '1.0.1'.
		spec package: 'PhaROS' with: 'PhaROS-pharos.742'.
	]