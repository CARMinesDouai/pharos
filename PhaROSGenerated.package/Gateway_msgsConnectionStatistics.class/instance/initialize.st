as yet unclassified
initialize
	super initialize.
	 self gateway_available: false. 
	 self time_since_last_seen: 0. 
	 self ping_latency_min: 0.0. 
	 self ping_latency_max: 0.0. 
	 self ping_latency_avg: 0.0. 
	 self ping_latency_mdev: 0.0. 
	 self network_info_available: false. 
	 self network_type: 0. 
	 self wireless_bitrate: 0.0. 
	 self wireless_link_quality: 0. 
	 self wireless_signal_level: 0.0. 
	 self wireless_noise_level: 0.0. 
