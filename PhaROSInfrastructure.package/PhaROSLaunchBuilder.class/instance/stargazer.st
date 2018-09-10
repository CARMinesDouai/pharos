util
stargazer
	
		| conf |
	
	conf := self package: 'stargazer' type:'pharos' named:'stargazer'.
	conf args: 'startmeasures'.
	
	^ conf.