as yet unclassified
stargazerBasedPose
	
		| conf |
	
	conf := self package: 'stargazer' type:'headless' named:''.
	conf args: 'pose'.
	
	^ conf.