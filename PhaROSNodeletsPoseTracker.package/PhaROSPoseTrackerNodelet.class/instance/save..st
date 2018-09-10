as yet unclassified
save: aFilePath
	self nodelets localizer entities do:  #makeImmutable.
	self nodelets localizer fileout: aFilePath.
	