public api
installAllTypes
	
	| allTypes |
	deployedTypes removeAll.
	deployedServices removeAll.
	dependencies removeAll.
	
	allTypes := PhaROSPackage allSubclasses flatCollect: [ :pharosPackageClass | pharosPackageClass types ].
	allTypes do: [ : definition | self manageType: definition] .
		
	self newFile: 'package.xml' at: self catkinPackageDirectory with: self packageXml ; 
		 newFile: 'CMakeLists.txt' at: self catkinPackageDirectory with: self cMakeListsTxt.
	
	self catkinMake