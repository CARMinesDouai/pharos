slam
moveBase
	| conf path |


	conf := self package: 'move_base' type:'move_base'  named: 'move_base'.

	conf output: 'screen'.
	

	conf remap:'map' to: '/map'.
	conf remap:'base_scan' to: '/scan'.
	conf remap:'base_laser' to: '/laser'.
	conf remap:'/cmd_vel' to: '/raw_command_velocity'.
	conf param: 'clearing_rotation_allowed' value: 'false'.
	conf param: 'controller_frequency' value: '10.0'.
	conf param: 'planner_frequency' value: '5.0'.
	conf param: 'recovery_behavior_enabled' value: 'false'. "in WORKINGVERSION it is true"


	"conf param:'base_global_planner' value:'carrot_planner/CarrotPlanner'."

"	conf param:'controller_frequency' value:'10.0'."
	
	"common costmap configuration "
	path := self yaml: [
		: common |
		
		
		common name:'expected_update_rate' value: 10.0.
		common name:'obstacle_range' value: 2.5.
		common name:'raytrace_range' value: 3.0.
		common name:'map_update_rate' value: 0.5.
		common name:'footprint' value: '[[-0.25, 0.225], [0.25, 0.225], [0.25, -0.225], [-0.25, -0.225] ]'.
		"common name: 'robot_radius' value: 0.25."
		common name:'inflation_radius' value: 0.6.
		common name:'unknown_cost_value' value: 255.
		common name:'observation_sources' value: 'scan'.
		common set:'scan' with: [ : scan | 
			scan property name: 'sensor_frame' value: 'laser'.
			scan property name: 'data_type' value:'LaserScan'.
			scan property name: 'topic' value: '/scan'.
			scan property name: 'marking' value: 'true'.
			scan property name: 'clearing' value: 'true'.
		].
	] named: 'costmap_common_params.yaml'.
      conf rosparam file: path; command: 'load'; ns: 'global_costmap'.
      conf rosparam file: path; command: 'load'; ns: 'local_costmap'.



	"local costmap configuration "
	path := self yaml: [ :yaml | 
		yaml set: 'local_costmap' with: [
			:local | 
			local property name:'global_frame' value: '/odom'.
			local property name:'robot_base_frame' value: '/base_link'.
			local property name:'update_frequency' value: 5.0.
			local property name:'publish_frequency' value: 0.5.
			local property name:'static_map' value: false.
			local property name:'rolling_window' value: true.
			local property name:'width' value: 10.0.
			local property name:'height' value: 10.0.
			local property name:'resolution' value: 0.1.
			local property name:'map_type' value: 'costmap'.
			local property name:'transform_tolerance' value: 1.0.
		].
 	] named: 'local_costmap_params.yaml'.
       conf rosparam file: path; command: 'load'.


	"global costmap configuration "
	path := self yaml: [ 
		:yaml |
		yaml set: 'global_costmap' with:[  :global |
			global property name: 'global_frame' value: '/map'.
			global property name: 'robot_base_frame' value: '/base_link'.
			global property name: 'update_frequency' value: 3.0.
			global property name: 'publish_frequency' value: 0.0.
			global property name: 'static_map' value: true.
			global property name:'resolution' value: 0.1.
			global property name: 'transform_tolerance' value: 1.0.
		].
	 ] named: 'global_costmap_params.yaml'.
       conf rosparam file: path; command: 'load'.


	"local planner configuration "
	path := self yaml: [ 
		: planner |
		planner name: 'controller_frequency' value:'10.0'.
		planner name: 'TrajectoryPlannerROS' value:''.
		planner name: '        transform_tolerance' value: 1.0.

		"Robot Configuration Parameters"
		planner name: '        acc_lim_x' value: 1.0.
		planner name: '        acc_lim_y' value: 0.0.
		planner name: '        acc_lim_th' value: 1.0.

		planner name: '        max_vel_x' value: 0.35.
		planner name: '        min_vel_x' value: 0.1.

		planner name: '        max_rotational_vel' value: 0.45.
		planner name: '        min_in_place_rotational_vel' value: 1.0.
		
		planner name: '        holonomic_robot' value: false.

		"Goal Tolerance Parameters"
		planner name: '        xy_goal_tolerance' value: 0.30.
		planner name: '        yaw_goal_tolerance' value:  0.1.


		"Trajectory Scoring Parameters"
		planner name: '        goal_distance_bias' value: 24.
		planner name: '        path_distance_bias' value: 32.
		planner name: '        sim_time' value: 2.0.
		planner name: '        sim_granularity' value: 0.1.		
		
		planner name: '        occdist_scale' value: 0.04.
		
		planner name: '        heading_lookahead' value: 0.325.
		planner name: '        dwa' value: false.
		planner name: '        meter_scoring' value: true.
		planner name: '        allow_unknown' value: true.

		"Oscillation Prevention Parameters"
   		planner name: '        oscillation_reset_dist' value: 0.05.
  
		planner name: '        vy_samples' value: 3.
		planner name: '        vx_samples' value: 10.
		planner name: '        vtheta_samples' value: 20.
		
		
	] named: 'base_local_planner_params.yaml'.


	conf rosparam file: path ; command: 'load'.  


	^ conf


