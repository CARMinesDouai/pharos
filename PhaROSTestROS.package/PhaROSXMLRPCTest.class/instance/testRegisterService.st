testing
testRegisterService
"registerService(caller_id, service, service_api, caller_api)

    Register the caller as a provider of the specified service.


    Parameters

        caller_id (str)
            ROS caller ID 

        service (str)
            Fully-qualified name of service 

        service_api (str)
            ROSRPC Service URI 

        caller_api (str)
            XML-RPC URI of caller node 

    Returns (int, str, int)
        (code, statusMessage, ignore)"

	self fail