generating - PhaROSPackage
generateDirectoryStructure
	|catkinPackageDirectory|
	
	catkinPackageDirectory := Smalltalk imageDirectory parent.
	
	{ 'bin' . 'image/scripts'  . 'build' . 'include' . 'msg' . 'srv' } do: [  :dirName |
		(catkinPackageDirectory / dirName) ensureCreateDirectory ].	
	
