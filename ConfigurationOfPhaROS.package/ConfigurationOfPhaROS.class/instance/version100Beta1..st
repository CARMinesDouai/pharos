old fixed versions
version100Beta1: spec 
	<version: '1.0-Beta1' imports: #('1.0b-baseline') >
	
	spec for: #common do: [
		spec blessing: #alpha.
		spec author: 'LucFabresse'.
		spec timestamp: '19/04/2013 16:00'.
		spec 
			project: 'XMLRPC' with: '1.0-Beta6';
			 project: 'PaulLePoulpe' with: '1.0.1'.
		spec
			package: 'PhaROS' with: 'PhaROS-NouryBouraqadi.86'.
			spec package:'TaskIT' with: 'TaskIT-SantiagoBragagnolo.20'.
		].

