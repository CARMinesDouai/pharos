tf
tfaas: aFrameFrom to: aFrameTo rate: aRate

	| conf |


	conf := self package: 'tfaas' type:'tfaas'  named: ('tfaas_{1}_{2}' format: {aFrameFrom normalizeFrame  . aFrameTo  normalizeFrame }).
	conf param: 'frameFrom' value: aFrameFrom.
	conf param: 'frameTo' value: aFrameTo.
	conf param: 'rate' value: '30'.	
		
	^ conf.