util
compressor
		| conf |
	
	
	conf := self package: 'robulab' type:'headless' named:'feedbackcompressor'.
	conf args: 'feedbackcompressor'.
	
	 
	^ conf.