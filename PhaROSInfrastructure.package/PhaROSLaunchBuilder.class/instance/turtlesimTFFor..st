as yet unclassified
turtlesimTFFor:  aTurtleName
	| conf |
	conf := self package: 'turtle_tf' 
				type:'turtle_tf_broadcaster.py'  
				named: 'turtlesim-tf-',aTurtleName, DateAndTime now asUnixTime asString.
	conf param: 'turtle' value: aTurtleName.