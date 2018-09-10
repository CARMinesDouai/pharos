API for PhaROSCommander
setupImageForCurrentCatkinPackage

	| phaROSPackageClass catkinPackageImageDirectory catkinPackageDirectory catkinPackageName |
	
	self assertThisPhaROSImageIsStoredInACatkinWorkspace.
	
	catkinPackageImageDirectory := Smalltalk imageDirectory.
	catkinPackageDirectory := catkinPackageImageDirectory parent.
	catkinPackageName := catkinPackageDirectory basename.
		
	SystemWindow allInstances do: #close.
	
	phaROSPackageClass := self generatePhaROSPackageClassForCatkinName: catkinPackageName.
	
	phaROSPackageClass browse.
	
	self generateDirectoryStructure.
	self generateBinScripts.
	
	instance := self basicNew initialize.
	instance 
		phaROSPackageClass: phaROSPackageClass;
		generateAllCatkinArtefacts.
	
	Smalltalk globals at: #PhaROSDoc ifPresent: [ :doc | doc open  ].
	Smalltalk globals at: #EUWorkspace ifPresent: [ :workspace | workspace open  ].