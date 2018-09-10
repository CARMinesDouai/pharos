localization
robotEFKPose
	| conf |


	conf := self package: 'robot_pose_ekf' type:'robot_pose_ekf'  named: 'robot_pose_ekf'.
	
	conf param:'output_frame' value:'odom'.
	conf param:'freq' value:'50.0'.
	conf param:'sensor_timeout' value:'1.0'.
	conf param:'odom_used' value:'true'.
	conf param:'imu_used' value:'true'.
	conf param:'vo_used' value:'false'.
	conf param:'debug' value:'true'.
	conf param:'self_diagnose' value:'false'.
	
	^ conf.