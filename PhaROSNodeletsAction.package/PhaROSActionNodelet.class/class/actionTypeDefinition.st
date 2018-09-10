as yet unclassified
actionTypeDefinition
	^ PhaROSCompositeType named: 'pharos/PhaROSAction' definedBy: {
		#header -> (PhaROSTypeBrowser instance definition: 'std_msgs/Header'). 
		#body -> (PhaROSArrayType ofType: PhaROSUInt8Type new)
	}  withConstants: {}.