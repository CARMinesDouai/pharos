as yet unclassified
mergerCallback: aTopicConnectionBuilder
	^ [ : msg : chn : stamp | 
		self register: msg at: stamp for: aTopicConnectionBuilder.
	].