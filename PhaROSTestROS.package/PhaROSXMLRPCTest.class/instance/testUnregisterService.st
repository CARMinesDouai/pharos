testing
testUnregisterService
"unregisterService(caller_id, service, service_api)

    Unregister the caller as a provider of the specified service.


    Parameters

        caller_id (str)
            ROS caller ID 

        service (str)
            Fully-qualified name of service 

        service_api (str)
            API URI of service to unregister. Unregistration will only occur if current registration matches. 

    Returns (int, str, int)
        (code, statusMessage, numUnregistered).


        Number of unregistrations (either 0 or 1). If this is zero it means that the caller was not registered as a service provider. The call still succeeds as the intended final state is reached. "
	self fail