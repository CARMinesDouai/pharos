as yet unclassified
register: aMeasure 
	| measure | 
	self flag: #uncoupleLandmarkFromLocalizerPackage.
	(aMeasure isKindOf: StargazerSGLandMark) ifTrue: [
		measure := PhaROSLocalizerMeasure fromPharosSGLandMark: aMeasure.	
	] ifFalse:[
		measure := aMeasure asLocalizerMeasure.
	]. 
	
	(entities at: measure id ifAbsentPut: [ PhaROSLocalizerEntity for: measure id ]) add: measure .