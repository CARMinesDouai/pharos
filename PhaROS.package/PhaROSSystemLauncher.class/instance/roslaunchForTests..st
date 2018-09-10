launching
roslaunchForTests: aContent

	| file |
	file := StandardFileStream forceNewFileNamed: '/tmp/content-empty-test.launch'.
	file nextPutAll: aContent.
	file flush.
	file close.
	
	^ (self roslaunch: '/tmp/content-empty-test.launch') asStickyReference.