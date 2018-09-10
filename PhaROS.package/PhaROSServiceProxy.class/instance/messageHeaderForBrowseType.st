calling
messageHeaderForBrowseType

	^ PhaROSHSMessageHeader newServiceClientWith: [
		:header |
		header callerId: self callerId;
				md5Sum: '*';
				probe: '1';
				service: self serviceName
	   ].
	 