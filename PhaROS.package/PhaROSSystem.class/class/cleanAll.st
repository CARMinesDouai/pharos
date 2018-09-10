cleaning
cleanAll

	PhaROSMaster allInstances do: #finalize.
	XMLRPCService stopAll.
	PhaROSNode allSubInstances do: #finalize. 
	PhaROSTcpServer stopAll.
	PhaROSTransport allInstances do: #finalize.
	Socket allInstances do: #closeAndDestroy.
	3 timesRepeat: [ Smalltalk garbageCollectMost ].
	OSProcess accessor restartChildWatcherProcess.