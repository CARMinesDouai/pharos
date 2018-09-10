imu
xsens
	|conf |
	
	conf := self package: 'xsens' type:'xsens' named:'xsens'.
	conf param:'imu_topic_name' value: '/imu_data'.
	conf param:'magnetic_topic_name' value: '/magnetic'.
	conf param:'frame_id' value: '/MT0'.
	
	^ conf.