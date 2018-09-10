slam
nodelet: aName manager: aString
	| conf  |


	conf := self package: 'nodelet' type:'nodelet'  named: aName.
	conf args: 'load ', aString.
	^ conf.