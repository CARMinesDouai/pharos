baselines
baseline12: spec
	<version:'1.2-baseline'>
	
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
		
			spec project: 'OSProcess' with: [
				spec 
					className: 'ConfigurationOfOSProcess';
					file: 'ConfigurationOfOSProcess' ;
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main'; 
					versionString: #stable.
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
					versionString:  #stable
			].
		
			"Testing"
			spec package: 'PhaROSTest' with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSTestROS' with: [ spec requires: #('PhaROS')].
			
			"Cool tools"
			spec package: 'PhaROSControllers' with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSExperiments' with: [ spec requires: #('PhaROS')].
			
			"Infrastructure: deployment and generation of code"
			spec package: 'PhaROSInfrastructure' with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSDeploymentDirectory'.
		
			"Some already implemented nodelets"	
			spec package: 'PhaROSNodeletsAction' 	with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsLocalizer'	with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsMerger' 	with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsMoveBase' with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsOdometry' with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsPosition'	 with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsRPC' 		with: [ spec requires: #('PhaROS')].
			spec package: 'PhaROSNodeletsTF' 		with: [ spec requires: #('PhaROS')].
			
			spec package: 'PhaROSNodeletsTurtlesim' with: [ spec requires: #('PhaROS')].
			
			spec package: 'PhaROSNodeletsPoseTracker' with: [
				spec requires: #('PhaROS' 'PhaROSNodeletsLocalizer')	
			].
			
			"PhaROS Configuration"
			spec package: 'PhaROS' with: [
				spec requires: #('XMLRPC' 'CommonTraits' 'Equals' 'PaulLePoulpe' 'OSProcess' 'TaskITProject').
			].
	
			"PhaROSInfrastructure is deprecated? but ROSLaunch still used?"
			spec 
				group: 'default' with: #('PhaROS'  'PhaROSControllers' 'PhaROSInfrastructure' 'PhaROSNodeletsAction' 'PhaROSNodeletsMoveBase' 'PhaROSNodeletsTF' 'PhaROSNodeletsPosition'   'PhaROSNodeletsLocalizer' 'PhaROSNodeletsMerger' 'PhaROSNodeletsOdometry' 'PhaROSNodeletsPoseTracker' 'PhaROSNodeletsRPC' );
				
				group: 'examples' with: #( 'PhaROSNodeletsTurtlesim'  );
					
				group: 'tests' with: #('PhaROSTest'  'PhaROSTestROS').
				
			spec group: 'basic-archetype' with: #( 'default' 'examples' 'tests').
			
			
	].
	
		
	