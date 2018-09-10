as yet unclassified
stargazerPoseBasedTF
	
		| conf |
	
	conf := self package: 'stargazer' type:'headless' named:''.
	conf args: 'tf'.
	
	^ conf.