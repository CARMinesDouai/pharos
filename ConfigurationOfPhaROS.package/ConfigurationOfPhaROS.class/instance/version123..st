versions
version123: spec 
	<version: '1.2.3' imports: #('1.2-baseline') >
	
	spec for: #common do: [ 
		spec blessing: #'v1.2.3'.
		spec author: 'LucFabresse'.
		spec timestamp: '24/01/2015 16:00'.
		spec project: 'XMLRPC' with: '1.01'.
		spec project: 'PaulLePoulpe' with: '1.0.1'.
		spec package: 'PhaROS' with: 'PhaROS-pharos.730'.
		spec project: 'TaskIT' with: '2.1' 
	]