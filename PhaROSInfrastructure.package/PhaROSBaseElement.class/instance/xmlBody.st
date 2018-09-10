as yet unclassified
xmlBody 
	^ childs inject: '' into: [ : acc : child |  acc, String tab, child xml  ]