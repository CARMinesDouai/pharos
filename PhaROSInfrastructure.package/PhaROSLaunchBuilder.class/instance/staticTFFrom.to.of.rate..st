tf
staticTFFrom: aFrame to: anOtherFrame  of: aStringOfShift rate: aRate
	| conf |
	
	conf:= self package: 'tf' type: 'static_transform_publisher' named: aFrame normalizeFrame,'s', '_to_', anOtherFrame normalizeFrame. 
	conf args: ('{1} /{2} /{3} {4}' format: {aStringOfShift . aFrame normalizeFrame . anOtherFrame normalizeFrame . aRate asString }).
	
	^ conf.