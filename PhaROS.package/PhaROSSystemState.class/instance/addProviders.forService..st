initialize-release
addProviders: providers forService: service
	| previousProviders |
	previousProviders := serviceProvidersDict at: service ifAbsent: [#()].
	serviceProvidersDict at: service put: (providers, previousProviders) 