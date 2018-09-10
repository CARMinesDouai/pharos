accessing
scriptsDirectory
	"assuming that this PhaROS image is correctly stored in 
		catkin-ws / src / <packageName> / image / <packageName>.image
		catkin-ws / src / <packageName> / image / scripts / script*.st
	"
	^ Smalltalk imageDirectory / #scripts 
		