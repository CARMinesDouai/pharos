private
assertThisPhaROSImageIsStoredInACatkinWorkspace

	"Ensure that we are inside the known directory layout of a catkin package. The image must be stored inside the image folder.
		
		catkin-ws/
			src/
				package-name/
					image/
						scripts/ 		
	"
	|errorText currentDirectory|
	
	errorText := '{1} can only be instantiated if the Pharo image is correctly stored in a catkin package directory because the scripts and types generation relies on the directories structure.' format: { self class name }.
	
	currentDirectory := Smalltalk imageDirectory asFileReference.
	
	"all assertions below must be statisfied"
	self assert: (({  
			currentDirectory basename = 'image'.
			currentDirectory parent parent basename = 'src'
			} asSet includes: false) not)   
		description: errorText.
		