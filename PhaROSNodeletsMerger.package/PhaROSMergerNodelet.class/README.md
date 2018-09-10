PhaROSMergerNodelet is a nodelet that allows to merge two topics, taking in care the stamp of the messages,  and send that merged information to a third topic. Additionaly it allows to add a filter condition for the data near to be merged.


 The nodelet offer the following methods in order to merge:

	1- merge: aTopicFlux with: anOtherTopicFlux using: aTransformation redirectingTo: aTopicPublisher
		This provides a merging mechanism in between aTopicFlux and anOtherTopicFlux using aTransformation to put the data into a message sendable to aTopicPublisher.
		aTransformation is a block that receives [: aTopicPublisherMessage :anOtherTopicFluxMessage :aTopicFluxMessage | ]. 
		
	2- merge: aTopicFlux with: anOtherTopicFlux using: aTransformation when: aCondition redirectingTo: aTopicPublisher
		This provides a merging mechanism in between aTopicFlux and anOtherTopicFlux using aTransformation to put the data into a message sendable to aTopicPublisher, just when aCondition is true.
		aCondition is a block that receives  [ :anOtherTopicFluxMessage :aTopicFluxMessage | ]. and returns a boolean.
		aTransformation is a block that receives [: aTopicPublisherMessage :anOtherTopicFluxMessage :aTopicFluxMessage | ]. 




