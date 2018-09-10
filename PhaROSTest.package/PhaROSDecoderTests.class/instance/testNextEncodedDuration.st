tests
testNextEncodedDuration
	"in the stream  { time . time . 1 . 0} "
	 decoder stream: (ReadStream on: #[0 0 0 0 0 0 0 0 160 134 1 0 0 0 0 0 1 0] ).
	 self assert: (decoder nextEncodedDuration= (Duration seconds: 0)). 
	 self assert: (decoder nextEncodedDuration= (Duration seconds: 100000)). 

	self should: [ decoder nextEncodedDuration ] raise: Error.  