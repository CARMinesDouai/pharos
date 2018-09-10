util
kompaiTF
		| conf |
	
	conf := self package: 'robulab' type:'headless' named:'pose_tf'.
	conf args: 'tf'.
	
	^ conf