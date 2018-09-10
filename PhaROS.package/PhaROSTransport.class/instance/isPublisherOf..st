accessing
isPublisherOf:  aTopic
[
 	^ (master lookupTopic: aTopic) isAPublisher: node. 
] on:Error do: [ ^ false ].	