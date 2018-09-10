slam
hectorMapping
	| conf |


	conf := self package: 'hector_mapping' type:'hector_mapping'  named: 'hector_mapping'.

	conf output: 'screen'.
	
	conf param:'map_frame' value:'map'.
	conf param:'base_frame' value:'base_link'.
	conf param:'odom_frame' value:'odom'.
	conf param:'output_timing' value:'false'.


	conf param:'scan_topic' value:'scan'.
	conf param:'pub_map_odom_transform' value:'true'.

	"<!-- Map size / start point -->"
	conf param:'map_resolution' value:'0.050'.
	conf param:'map_size' value:'2048'.
	conf param:'map_start_x' value:'0.5'.
	conf param:'map_start_y' value:'0.5'.

	"<!-- Map update parameters -->"
	conf param:'update_factor_free' value:'0.4'.
	conf param:'update_factor_occupied' value:'0.9'.
	conf param:'map_update_distance_thresh' value:'0.4'.
	conf param:'map_update_angle_thresh' value:'0.06'.

	"
	conf param:'pub_drawings' value:'true'.
	conf param:'pub_debug_output' value:'true'.
	"


