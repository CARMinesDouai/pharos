as yet unclassified
initialize
	super initialize.
	 self auto_disable_bodies: false. 
	 self sor_pgs_precon_iters: 0. 
	 self sor_pgs_iters: 0. 
	 self sor_pgs_w: 0.0. 
	 self sor_pgs_rms_error_tol: 0.0. 
	 self contact_surface_layer: 0.0. 
	 self contact_max_correcting_vel: 0.0. 
	 self cfm: 0.0. 
	 self erp: 0.0. 
	 self max_contacts: 0. 
