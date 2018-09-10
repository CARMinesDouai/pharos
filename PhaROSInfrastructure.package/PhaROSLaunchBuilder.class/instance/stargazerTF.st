util
stargazerTF
	
		| conf |
	
	conf := self package: 'stargazer' type:'headless' named:'stargazer_tf'.
	conf args: 'tf'.
	
	^ conf.