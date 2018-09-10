slam
nodeletManager: aName
	| conf  |


	conf := self package: 'nodelet' type:'nodelet'  named: aName.
	conf args: ' manager __name:= ', aName.
	^ conf.