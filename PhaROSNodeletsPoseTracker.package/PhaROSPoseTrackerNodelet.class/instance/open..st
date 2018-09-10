as yet unclassified
open: aFilePath
	self nodelets localizer filein: aFilePath.
	self lastEntityRecorded:  (self nodelets localizer entities collect: #id) 