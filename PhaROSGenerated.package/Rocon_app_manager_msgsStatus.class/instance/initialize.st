as yet unclassified
initialize
	super initialize.
	 self application_namespace: ''. 
	 self remote_controller: ''. 
	 self rapp_status: ''. 
	 self rapp: Rocon_app_manager_msgsRapp new. 
	 self published_interfaces: OrderedCollection new . 
	 self published_parameters: OrderedCollection new . 
