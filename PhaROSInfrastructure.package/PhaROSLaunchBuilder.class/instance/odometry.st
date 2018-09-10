util
odometry
		| conf |
	
	
	conf := self package: 'robulab' type:'headless' named:'odometer'.
	conf args: 'odometry'.
	
	
	^ conf