private
typeNamed: aTypeId for: firstLevel 
	
	^ PhaROSROSType message named: aTypeId defined: (
			firstLevel collect: [ : f | PhaROSMessageTypeBuilder parseRosLine: f typePool: self ]
	).
	
	