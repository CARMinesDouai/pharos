as yet unclassified
checkStamps
	| thisDif thatDif ret |

	thisDif :=  (DateAndTime now - ((messages at: this) at: 2) ) asMilliSeconds.
	thatDif :=  (DateAndTime now - ((messages at: that) at: 2) ) asMilliSeconds.
	
	ret := thisSync ifNil: [true] ifNotNil:[( thisDif - thisSync) < self threshold and: [ (thatDif - thatSync ) < self threshold ]].
	
	thisSync := thisDif.
	thatSync := thatDif.
	
	^ret.