localization
hectorLocalization
	| conf |


	conf := self package: 'hector_pose_estimation' type:'pose_estimation'  named: 'hector_pose_estimation'.
	conf param: 'nav_frame' value: 'odom'.
	
	^ conf.