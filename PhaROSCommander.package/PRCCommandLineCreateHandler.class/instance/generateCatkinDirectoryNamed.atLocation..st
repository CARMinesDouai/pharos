catkin
generateCatkinDirectoryNamed: package atLocation: catkinPackageDirectory
	"
		create this structure:
		
		catkinPackageDirectory/
			|- image/
			|-vm/
				|- pharo
	"
	self stdout lf.
	self stdout: ('Generating catkin package for {1}' format: { package }).
	self forceNewIfNeededAt: catkinPackageDirectory.
	(catkinPackageDirectory / 'image' ) createDirectory.
		
	self stdout: ('Copying pharo vm from {1} to {2}' format: { (Smalltalk imageDirectory / 'pharo-vm') pathString.  (catkinPackageDirectory / 'vm' ) pathString}).
	OSProcess command: ('ln -s {1} {2}' format: { (Smalltalk imageDirectory / 'pharo-vm') pathString.  (catkinPackageDirectory / 'vm' ) pathString}).
	