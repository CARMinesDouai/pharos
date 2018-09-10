as yet unclassified
pose: aPhaROSPose
	frame pose: aPhaROSPose. 
	
	tfnodelet tf: [ : aTfMessage |

		
		aTfMessage transforms add:  frame asTransformStamped.
		
	 ].

