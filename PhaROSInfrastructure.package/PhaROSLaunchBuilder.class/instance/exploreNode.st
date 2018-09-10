as yet unclassified
exploreNode
	| conf path |

	conf := self package: 'explore' type:'explore'  named: 'explore'.

	conf output: 'screen'.
	
	conf remap:'slam_entropy' to: 'gmapping/entropy'.
	
	conf param: 'potential_scale' value:'0.005'.
	conf param: 'orientation_scale' value:'0.0'.
	conf param: 'gain_scale' value:'1.0'.
	conf param: 'close_loops' value:'true'.
	
	path := self yaml: [
		: common |
		common name:'expected_update_rate' value: 10.0.
		common name:'obstacle_range' value: 6.5.
		common name:'raytrace_range' value: 7.0.
		common name:'map_update_rate' value: 0.5.
		common name:'footprint' value: '[[-0.25, 0.225], [0.25, 0.225], [0.25, -0.225], [-0.25, -0.225] ]'.
		"common name: 'robot_radius' value: 0.25."
		common name:'inflation_radius' value: 0.5.
		common name:'unknown_cost_value' value: 255.
		common name:'observation_sources' value: 'scan'.
		common set:'scan' with: [ : scan | 
			scan property name: 'sensor_frame' value: 'laser'.
			scan property name: 'data_type' value:'LaserScan'.
			scan property name: 'topic' value: '/scan'.
			scan property name: 'marking' value: 'true'.
			scan property name: 'clearing' value: 'true'.
		].
	] named: 'costmap_common.yaml'.
      conf rosparam file: path; command: 'load'; ns: 'explore_costmap'.

	path := self yaml: [ 
		:yaml |
		yaml set: 'explore_costmap' with: [ 
			:explore |
			explore property name: 'global_frame' value: '/map'.
			explore property name: 'robot_base_frame' value: '/base_link'.
			explore property name: 'update_frequency' value: 3.0.
			explore property name: 'publish_frequency' value: 0.0.
			explore property name: 'static_map' value: true.
			explore property name:'resolution' value: 0.1.
			explore property name: 'transform_tolerance' value: 1.0.
			explore property name: 'track_unknown_space' value: 'true'.
		].
	 ] named: 'explore_costmap.yaml'.
       conf rosparam file: path; command: 'load'.

	^ conf