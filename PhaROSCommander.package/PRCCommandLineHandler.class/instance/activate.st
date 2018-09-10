activation
activate 	

	self activateHelp.
	self loadNetworkSettings.
	[ self realActivate ] on: Error do: [ :e |
		self exitFailure: e messageText, String lf.
	].
	self exitSuccess.