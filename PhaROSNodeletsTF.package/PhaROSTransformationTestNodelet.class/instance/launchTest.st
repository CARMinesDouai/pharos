as yet unclassified
launchTest
	tfs := PhaROSSystemLauncher instance launch: [
		: launch |
		launch staticTFFrom: '/map' to: '/odom'  of: '0 0 0 0 0 0' rate: 100. 
		launch staticTFFrom: '/odom' to: '/base_footprint'  of: '1 1 2 20 0 0' rate: 100.	
		launch staticTFFrom: '/base_footprint' to: '/base_link'  of: '1 1 2 0 0 0' rate: 100.	
		launch staticTFFrom: '/base_link' to: '/laser'  of: '1 1 2 0 20 0' rate: 100.		
		launch staticTFFrom: '/base_link' to: '/sonar'  of: '1 1 2 0 10 10' rate: 100.		
		launch staticTFFrom: '/base_link' to: '/infrared'  of: '1 1 2 10 0 0' rate: 100.	
		launch staticTFFrom: '/base_link' to: '/stargazer'  of: '1 1 2 0 180 0' rate: 100.				
		launch rviz. 
	] .