as yet unclassified
orientation: anOrientation
	self debug: ' setting' . 
	self orientationOut send: [
		: msg |
		msg data: anOrientation.
	]. 
