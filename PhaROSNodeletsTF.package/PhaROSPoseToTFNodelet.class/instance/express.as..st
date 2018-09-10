as yet unclassified
express: aPoseTopic as: aFrame
	writer at: aPoseTopic ifAbsentPut: [self nodelets transformation writerFor: aFrame].
	
	aPoseTopic for: [ : pose |  self log: 'receiving pose'. (self writerAt: aPoseTopic ) pose: pose ].
	
	