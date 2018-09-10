old fixed versions
version100Beta11: spec 
	<version: '1.1-Beta1' imports: #('1.0-baseline') >
	
	spec for: #common do: [
		spec blessing: #alpha.
		spec author: 'SantiagoBragagnolo'.
		spec timestamp: '09/07/2013 12:00'.
		spec 
			project: 'XMLRPC' with: '1.0-Beta6';
			 project: 'PaulLePoulpe' with: '1.0.1'.
		spec
			package: 'PhaROS' with: 'PhaROS-SantiagoBragagnolo.131'.
spec package:'TaskIT' with: 'TaskIT-SantiagoBragagnolo.20'			
		].

