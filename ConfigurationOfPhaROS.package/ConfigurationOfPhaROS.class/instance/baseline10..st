baselines
baseline10: spec
	<version:'1.0-baseline'>
	"BASE LINE WITHOUT KOM"
	spec for: #common do: [
			spec blessing: #baseline.
			spec repository: 'http://smalltalkhub.com/mc/CAR/PhaROS/main'.
			spec project: 'XMLRPC' with: [
				spec 
					className: 'ConfigurationOfXMLRPC';
					file: 'ConfigurationOfXMLRPC' ;
					repository: 'http://ss3.gemstone.com/ss/XMLRPC'; 
					versionString: #bleedingEdge;
					loads: #('XMLRPC-Client-Core' 'XMLRPC-Client-Tests' 'XMLRPC-Server-Core' 'XMLRPC-Server-Tests')
			].
			spec project: 'PaulLePoulpe' with: [ 
				spec 	className: 'ConfigurationOfPaulLePoulpe'; 
						loads: #('default' );
						file: 'ConfigurationOfPaulLePoulpe';
						repository: 'http://ss3.gemstone.com/ss/PaulLePoulpe'. 
			]	.
			spec project: 'OSProcess' with: [
				spec 
					className: 'ConfigurationOfOSProcess';
					file: 'ConfigurationOfOSProcess' ;
					repository: 'http://www.squeaksource.com/MetacelloRepository'; 
					versionString: #stable.
			].
			spec project: 'CommonTraits' with: [
				spec 
					className: 'ConfigurationOfCommonTraits';
					file: 'ConfigurationOfCommonTraits' ;
					versionString: #bleedingEdge;
					repository: 'http://smalltalkhub.com/mc/CAR/PhaROS/main'.
			].
		    
			spec package: 'TaskIT' with: [
				spec repository: 'http://smalltalkhub.com/mc/sbragagnolo/TaskIT/main'.
			].
				
			spec package: 'PhaROS' with: [
				spec requires: #('XMLRPC' 'CommonTraits' 'PaulLePoulpe' 'OSProcess' 'TaskIT' ).
			].
		   
			spec group: 'default'  with: #( 'PhaROS' ).
	].

