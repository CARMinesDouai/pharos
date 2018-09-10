util
kompai2
		| conf |
	
	
	conf := self package: 'kompai' type:'headless' named:'kompai2'.
	conf args: 'kompai2'.
	
	 
	^ conf.