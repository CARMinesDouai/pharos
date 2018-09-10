tests
testNormalizeFrame
	self assert: '/frame' normalizeFrame = 'frame'.
	self assert: 'frame' normalizeFrame = 'frame'.
	self assert: 'frame/frame' normalizeFrame = 'frame/frame'.
	self assert: '/frame/frame' normalizeFrame = 'frame/frame'.