versions
version122: spec 
	<version: '1.2.2' imports: #('1.2-baseline') >
	
	spec for: #common do: [ 
		spec blessing: #'v1.2.2 - adapt to new taskit'.
		spec author: 'LucFabresse'.
		spec timestamp: '1/07/2014 16:00'.
		spec project: 'XMLRPC' with: '1.01'.
		spec project: 'PaulLePoulpe' with: '1.0.1'.
		spec package: 'PhaROS' with: 'PhaROS-PabloEstefo.709'.
		spec project: 'TaskIT' with: '2.1' 
	]