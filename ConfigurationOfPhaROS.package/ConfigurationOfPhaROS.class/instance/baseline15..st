baselines
baseline15: spec
	<version:'1.5-baseline'>
	
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
						repository: 'http://ss3.gemstone.com/ss/PaulLePoulpe';
						versionString: #bleedingEdge.
			].
			
			spec package: 'CommonTraits' with: [
				spec repository: 'http://smalltalkhub.com/mc/CAR/ReusableBricks/main'
			].
			spec package: 'Equals' with: [
				spec repository: 'http://smalltalkhub.com/mc/CAR/ReusableBricks/main'
			].
	
			spec project: 'TaskITProject' with: [
				spec 
					className: 'ConfigurationOfTaskIT';
					file: 'ConfigurationOfTaskIT' ;
					repository: 'http://smalltalkhub.com/mc/CAR/TaskIT/main';
					versionString: '2.2'
			].
		
			"Testing"
			spec package: 'PhaROSTest' with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSTestROS' with: [ spec requires: #('PhaROS')].
			
			spec package: 'PhaROSExperiments' with: [ spec requires: #('PhaROS')].
			
			"Infrastructure: deployment and generation of code"
			spec package: 'PhaROSInfrastructure' with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSDeploymentDirectory'.
	
			"examples"
			spec package: 'PhaROSNodeletsTurtlesim' with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROS-PackageExample' with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSPackage_TFSplitter'.
			
			"doc"
			spec package: 'PhaROS-Doc'.

			"Some already implemented nodelets"	
			spec package: 'PhaROSNodeletsAction' 	with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsLocalizer'	with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsMerger' 	with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsMoveBase' with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsOdometry' with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsPosition'	 with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsRPC' 		with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsTF' 		with: [ spec requires: #('PhaROS')].			
			spec package: 'PhaROSNodeletsPoseTracker' with: [
				spec requires: #('PhaROS' 'PhaROSNodeletsLocalizer' 'PhaROSNodeletsTF') ].
			
			spec package: 'PhaROSGenerated' 		with: [ spec requires: #('PhaROS')].
					
			"PhaROS Configuration"
			spec package: 'PhaROS' with: [
				spec requires: #('XMLRPC' 'CommonTraits' 'Equals' 'PaulLePoulpe' 'TaskITProject').
			].
	
			"groups"
			spec 
				group: 'default' with: #('PhaROS' 'PhaROSInfrastructure' );
				
				group: 'examples' with: #( 'PhaROS-PackageExample' 'PhaROSNodeletsTurtlesim' 'PhaROS-Doc' );
					 
				group: 'tests' with: #('PhaROSTest'  'PhaROSTestROS') ;
				
				group: 'nodelets' with: #('PhaROSNodeletsAction' 'PhaROSNodeletsLocalizer'
				'PhaROSNodeletsMerger' 'PhaROSNodeletsMoveBase' 'PhaROSNodeletsOdometry' 'PhaROSNodeletsTF' 'PhaROSNodeletsPosition'  'PhaROSNodeletsPoseTracker' 'PhaROSNodeletsRPC');
				
				group: 'packages' with: #('PhaROSPackage_TFSplitter');
				
				"this group is currently used by the pharos commander"
				group: 'all' with: #( 'default' 'examples' 'tests');
				
				group: 'all+types' with: #( 'all' 'PhaROSGenerated').
	].
	
		
	