deploying
dependencies 

	| return packageName packageNameType |
	
	"
		dependencies are related with the package owner of each type. 
		The dependencies exists if the type related with the type is package type (std_msg/Int32 by example.) but no the basic types as Int32 it self. Check more in the type definition in the documentation of ROS
		
		int32 val
		std_msgs/Header
		
		int this case, int32 does not imply any dependency, but Header indeed it mean it. 
	"
	
	return := Set new.
	packageName := (( '/' split: self typeName ) at: 1).
	
	typeDefinition keysAndValuesDo: [:k :v | 
		 packageNameType := ( '/' split: v typeName ) .
		packageNameType size > 1 ifTrue: [
			packageNameType := packageNameType at:1 .
			packageNameType = packageName ifFalse: [
				return add: packageNameType.
		 	].		
		]
	].
	^ return.
