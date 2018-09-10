encoding
encodeTime: aTime
        | time |
        time := aTime.
        aTime isSymbol  ifTrue: [
                time := PhaROSTimestamp perform: aTime.
        ].
        (aTime isKindOf: DateAndTime )ifTrue:[
                time := PhaROSTimestamp new timestamp: aTime; yourself.
        ].
        aTime = 0
                ifTrue: [ self encodeUint32: 0.
                                self encodeUint32: 0]
                ifFalse: [ self encodeUint32: time  secondsUTC.
                                self encodeUint32: time  nanoSeconds.]