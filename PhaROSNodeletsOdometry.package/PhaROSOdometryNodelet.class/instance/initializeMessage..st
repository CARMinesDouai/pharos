as yet unclassified
initializeMessage: aMessage
	| dValue |
	36 timesRepeat: [ 
		aMessage pose covariance add: 0.0. 
		aMessage twist covariance add: 0.0.
	].
	self flag: #lookAtComment.
" This value is really arbitrar.. is based on turtlebot specs, it should be based on robulab, or even better, parametrized "
	dValue := (0.017 * 0.017) roundUpTo: 0.0000001. 
	
	aMessage pose covariance at:1 put: dValue.
	aMessage pose covariance at:8 put: dValue.
	aMessage pose covariance at:15 put: dValue.
	aMessage pose covariance at:22 put: dValue.
	aMessage pose covariance at:29 put: dValue.	
	aMessage pose covariance at:36 put: dValue.
		
	aMessage twist covariance at:1 put: dValue.
	aMessage twist covariance at:8 put: dValue.
	aMessage twist covariance at:15 put: dValue.
	aMessage twist covariance at:22 put: dValue.
	aMessage twist covariance at:29 put: dValue.	
	aMessage twist covariance at:36 put: dValue.
	