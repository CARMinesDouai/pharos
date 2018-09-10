printing
asDump
	^ '{4} x: {1} y:{2} z:{3}' format:{x asString . y asString . z asString . self class name }.