versions
version121: spec 
	<version: '1.2.1' imports: #('1.2-baseline') >
	
	spec for: #common do: [ 
		spec blessing: #'v1.2.1 - after moving most of PhaROS to sthub'.
		spec author: 'LucFabresse'.
		spec timestamp: '18/06/2014 16:00'.
		spec project: 'XMLRPC' with: '1.01'.
		spec project: 'PaulLePoulpe' with: '1.0.1'.
		spec package: 'PhaROS' with: 'PhaROS-PabloEstefo.709'.
		spec package:'TaskIT' with: 'TaskIT-SantiagoBragagnolo.20'
	]