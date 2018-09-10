localization
amcl


	|conf |
	
	conf := self package: 'amcl' type:'amcl' named:'amcl'.

	  conf param:'odom_model_type' value:'diff'.
	  conf param:'odom_alpha5' value:'0.1'.
	  conf param:'gui_publish_rate' value:'10.0'.
	  conf param:'laser_max_beams' value:'100'.
	  conf param:'min_particles' value:'500'.
	  conf param:'max_particles' value:'5000'.
	  conf param:'kld_err' value:'0.05'.
	  conf param:'kld_z' value:'0.99'.
	  conf param:'odom_alpha1' value:'0.2'.
	  conf param:'odom_alpha2' value:'0.2'.
	 " <!-- translation std dev, m -->"
	  conf param:'odom_alpha3' value:'0.8'. 
	  conf param:'odom_alpha4' value:'0.2'.
	  conf param:'laser_z_hit' value:'0.5'.
	  conf param:'laser_z_short' value:'0.05'.
	  conf param:'laser_z_max' value:'0.05'.
	  conf param:'laser_z_rand' value:'0.5'.
	  conf param:'laser_sigma_hit' value:'0.2'.
	  conf param:'laser_lambda_short' value:'0.1'.
	  conf param:'laser_lambda_short' value:'0.1'.
	  conf param:'laser_model_type' value:'likelihood_field'.
	 " <!-- conf param:'laser_model_type' value:'beam'. -->"
	  conf param:'laser_likelihood_max_dist' value:'2.0'.
	  conf param:'update_min_d' value:'0.2'.
	  conf param:'update_min_a' value:'0.5'.

	  conf param:'odom_frame_id' value:'odom'.

	  conf param:'base_frame_id" type="str' value:'base_link'.
	  conf param:'global_frame_id" type="str' value:'map'.

	  conf param:'resample_interval' value:'2.0'.
	  conf param:'transform_tolerance' value:'1.0'.
	  conf param:'recovery_alpha_slow' value:'0.0'.
	  conf param:'recovery_alpha_fast' value:'0.0'.
	  conf param:'use_map_topic' value:'true'.
	  conf param:'first_map_only' value:'true'.
	^ conf.