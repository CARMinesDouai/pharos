topic-publishing
send: aFeedbackMessage
		
	lastFeedback := aFeedbackMessage. "update message"
	
	self feedbackPublishingTopic send:[ : msg | 
			msg feedback: aFeedbackMessage feedback.
			msg status: aFeedbackMessage status.
			msg header: aFeedbackMessage header.
			msg header stamp: #now.
	].
