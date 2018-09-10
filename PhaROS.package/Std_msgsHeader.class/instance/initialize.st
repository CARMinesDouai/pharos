as yet unclassified
initialize
	super initialize.
	 self seq: Std_msgsHeader consumeHeaderId. 
	 self stamp:  #now . " now is changed by PhaROSTimestamp now. in encoding time, just before send the message "
	 self frame_id: ''. 
