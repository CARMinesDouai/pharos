baselines
baseline11: spec
	<version:'1.1-baseline'>
	"BASELINE WITH ConfigurationOfTaskIT - it requieres Ghost proxies "
	


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
		
			spec project: 'TaskIT' with: [
				spec 
					className: 'ConfigurationOfTaskIT';
					file: 'ConfigurationOfTaskIT' ;
					versionString: #bleedingEdge;
					repository: 'http://smalltalkhub.com/mc/sbragagnolo/TaskIT/main'.
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
			spec package: 'PhaROSNodeletsTurtlebot' with: [ spec requires: #('PhaROS')].
			
			spec package: 'PhaROSNodeletsTurtlesim' with: [ spec requires: #('PhaROS')].
			
			spec package: 'PhaROSNodeletsPoseTracker' with: [
				spec requires: #('PhaROS' 'PhaROSNodeletsLocalizer')	
			].
			
			"Some already implemented Packages"
			
			
			spec package: 'PhaROSPackageEsug' with: [
				spec requires:#('PhaROS' 'PhaROSControllers' 'PhaROSNodeletsTurtlesim' 'PhaROSNodeletsTF' )	
			].
		
			spec package: 'ChatterPackage' with: [
				spec requires:#('PhaROS' 'PhaROSControllers'  )	
			].
			
			spec package: 'DonatelloPackage' with: [
				spec requires:#('PhaROS' 'PhaROSControllers' 'PhaROSNodeletsTF'  )	
			].
		
			"PhaROS Configuration"	
			
			spec package: 'PhaROS' with: [
				spec requires: #('XMLRPC' 'CommonTraits' 'PaulLePoulpe' 'OSProcess' 'TaskIT').
			].
		
		
		
			spec 	group: 'default' with: #( 'PhaROS' 'PhaROSControllers' 'PhaROSInfrastructure'  );
	 				group: 'default+tests' with: #( 'PhaROS' 'PhaROSTest' 'PhaROSTestROS' 'PhaROSControllers' 'PhaROSInfrastructure' );
					group: 'core' with: #('PhaROS' );
					group: 'core+tests' with: #('PhaROS' 'PhaROSTest' 'PhaROSTestROS' );
				
					group: 'nodelets-ros-controllers' with: #( 'PhaROSNodeletsAction' 'PhaROSNodeletsMoveBase' 'PhaROSNodeletsTF' 'PhaROSNodeletsPosition' 'PhaROSNodeletsTurtlesim' 'PhaROSNodeletsTurtlebot');
					group: 'nodelets-behavior' with: #( 'PhaROSNodeletsLocalizer' 'PhaROSNodeletsMerger' 'PhaROSNodeletsOdometry' 'PhaROSNodeletsPoseTracker' 'PhaROSNodeletsRPC');
					group: 'nodelets' with: #('nodelets-ros-controllers' 'nodelets-behavior');
					group: 'all' with: #('default+tests' 'nodelets').
		
			
			spec group: 'full-archetype' with: #('all' ).
			spec group: 'basic-archetype' with: #('PhaROS' 'PhaROSControllers' 'PhaROSNodeletsTurtlesim' 'PhaROSNodeletsTF' ).
			spec group: 'core-archetype' with: #('PhaROS' ).
		
	
	].
	
		
	