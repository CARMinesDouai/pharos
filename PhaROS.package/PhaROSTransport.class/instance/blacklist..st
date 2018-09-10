publishing
blacklist: anUrl

	blacklist at: anUrl ifPresent: [ : val | blacklist at:anUrl put: val +1 ] ifAbsent:[ blacklist at: anUrl put: 1].