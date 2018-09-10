as yet unclassified
pollDistances
	| pose |

	localizer scannedEntities do: [
		: entity |
		[
		pose := localizer nodelets transformation transformBetween: entity frameName and: robotFrame.
		pose position module2d < 1.0 ifTrue: [
			callback cull: (PhaROSLocalizerMeasure id: entity id pose: pose) cull: self cull: DateAndTime now
		].] on: Error do: [ :e | self debug: e messageText ].
	].
	
	rate wait. 