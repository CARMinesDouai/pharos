slam
velocitySmoother
	| conf path |
	
	self nodeletManager: 'move_nodelet_manager'.
	conf := self nodelet: 'smoother' load: 'yocs_velocity_smoother/VelocitySmootherNodelet move_nodelet_manager'.
	path := self yaml: [ : smooth |
		
		smooth name: 'speed_lim_v' value: 0.4.
		smooth name: 'speed_lim_w' value: 0.4.
		
		smooth name: 'accel_lim_v' value: 5.0.
		smooth name: 'accel_lim_w' value: 5.0.
		
		smooth name: 'frequency' value: 20.0.
		smooth name: 'decel_factor' value: 1.0.
	] named: 'smooth.yaml'.
	conf rosparam file: path; command: 'load'.
	
	conf remap: '/smoother/odometry' to: '/odom'.
	conf remap: '/smoother/raw_cmd_vel' to: '/raw_command_velocity'.
	conf remap: '/smoother/smooth_cmd_vel' to: '/command_velocity'.
	
	
	