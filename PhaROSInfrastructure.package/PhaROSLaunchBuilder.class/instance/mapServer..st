util
mapServer: aFile
	| conf |
	
	conf := self package: 'map_server' type:'map_server'  named: 'map_server'.
	conf args: aFile. 
	^ conf.