util
rviz


	| conf |

	conf := self package: 'rviz' type:'rviz'  named: 'rviz'.
	conf output: 'screen'.
	conf respawn: false.
	
	^ conf.