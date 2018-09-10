accessing
typesDirectory
	"assuming that this PhaROS image is correctly stored in 
		catkin-ws / src / <packageName> / image / <packageName>.image
		catkin-ws / src / <packageName> / msg
	"
	^ Smalltalk imageDirectory / #msg 
		