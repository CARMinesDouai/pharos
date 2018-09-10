scripts
scriptServiceDefining
	"In ROS we do have services. A Service is an async computation that has related a request and a response types. In order to make available a service in ROS world you should execute the following code"
	self controller node serve: [ :req :rsp | 
		"this block will be executed when any one calls for this service" 
		Transcript show: 'Service has been called.'; cr.  
	] at: '/pharos/service' typedAs:'roscpp/Empty'.
	
