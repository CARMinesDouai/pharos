accessing
configureDependencies: aLaunchSpec	
	self flag: #thisShouldChange.
	" now the node is being configured during the instanciation, we need to have an explicit launchtime, when we can ask packages for it launch configuration.  "
	nodelets do: [:p | p configureDependencies: aLaunchSpec ]