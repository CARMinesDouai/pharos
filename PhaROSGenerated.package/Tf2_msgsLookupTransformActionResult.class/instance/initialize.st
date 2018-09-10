as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self status: Actionlib_msgsGoalStatus new. 
	 self result: Tf2_msgsLookupTransformResult new. 
