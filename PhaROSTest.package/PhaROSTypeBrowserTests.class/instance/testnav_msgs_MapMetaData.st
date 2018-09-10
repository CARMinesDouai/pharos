test-nav_msgs/
testnav_msgs_MapMetaData
	| definition | 
	definition :=  browser type: 'nav_msgs/MapMetaData'. 
	self assert: definition typeName = 'nav_msgs/MapMetaData'.
	self assert: definition md5Sum = '10cfc8a2818024d3248802c00c95f11b'.
		