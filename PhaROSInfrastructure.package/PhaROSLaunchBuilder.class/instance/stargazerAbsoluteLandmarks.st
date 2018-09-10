as yet unclassified
stargazerAbsoluteLandmarks
	
		| conf |
	
	conf := self package: 'stargazer' type:'headless' named:''.
	conf args: 'absolutelandmark'.
	
	^ conf.