as yet unclassified
go
	| landmark |
	landmark := self currentLandmarkId.
	self log: ' GOING-LM- ', landmark asString .
	self flag: #uncomment.
	currentGoal := self nodelets robulab goToEntityID: landmark.
	self log: ' GOING! '.
	^ landmark.