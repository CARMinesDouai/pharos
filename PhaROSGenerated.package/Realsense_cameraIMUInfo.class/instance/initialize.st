as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self data:  (OrderedCollection new: 12). 
	 self noise_variances:  (OrderedCollection new: 3). 
	 self bias_variances:  (OrderedCollection new: 3). 
