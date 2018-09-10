as yet unclassified
recordCurrentPose
	| measure currentPose | 
	
	lastEntityRecorded := lastEntityRecorded + 1.
	currentPose := self nodelets  transformation transformBetween: '/base_link' and: '/map'.
	measure := PhaROSLocalizerMeasure id: lastEntityRecorded pose: currentPose.
	
	self nodelets localizer register: measure.
	Transcript show: (' Entity {1} recorded pointing to {2}' format: { lastEntityRecorded . currentPose }); cr.
	
	^ measure