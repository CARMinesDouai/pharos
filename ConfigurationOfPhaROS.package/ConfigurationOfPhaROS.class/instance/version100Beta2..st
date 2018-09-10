old fixed versions
version100Beta2: spec 
	<version: '1.0-Beta2' imports: #('1.0b-baseline') >
	
	spec for: #common do: [
		spec blessing: #alpha.
		spec author: 'JannikLaval'.
		spec timestamp: '12/07/2013 12:00'.
		spec 
			project: 'XMLRPC' with: '1.0-Beta6';
			 project: 'PaulLePoulpe' with: '1.0.1'.
		spec
			package: 'PhaROS' with: 'PhaROS-NouryBouraqadi.147'.
			spec package:'TaskIT' with: 'TaskIT-SantiagoBragagnolo.20'.
		].

