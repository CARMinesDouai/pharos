util
stargazerHDPose
	
		| conf |
	
	conf := self package: 'stargazer' type:'headless' named:'stargazer_hd_pose'.
	conf args: 'hdpose'.
	
	^ conf.