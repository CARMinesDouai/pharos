accessing
build
	^ PhaROSServiceType new request: request build ; response: response build; typeName: (package, '/', name); yourself.