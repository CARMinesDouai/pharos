test-sensor_msgs/
testsensor_msgs_PointCloud2
	| definition | 
	definition :=  browser type: 'sensor_msgs/PointCloud2'. 
	self assert: definition typeName = 'sensor_msgs/PointCloud2'.
	self assert: definition md5Sum = '1158d486dd51d683ce2f1be655c3c181'.
		