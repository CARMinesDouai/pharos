old fixed versions
version100Beta3: spec 
	<version: '1.0-Beta3' imports: #('1.0b-baseline') >
	
	spec for: #common do: [
		spec blessing: #alpha.
		spec author: 'SantiagoBragagnolo'.
		spec timestamp: '12/09/2013 12:00'.
		spec 
			project: 'XMLRPC' with: '1.0-Beta6';
			 project: 'PaulLePoulpe' with: '1.0.1'.
		spec
			package: 'PhaROS' with: 'PhaROS-SantiagoBragagnolo.202'.
			spec package:'TaskIT' with: 'TaskIT-SantiagoBragagnolo.20'
		].

