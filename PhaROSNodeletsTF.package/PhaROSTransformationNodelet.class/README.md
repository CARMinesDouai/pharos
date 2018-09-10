PhaROSTransformationNodelet is a nodelet that gives the basic functionality from TF framework. It allows to write a the position of a frame in the system and to calculates distances in between connected frames. 
Each frame has an object reification that is also a node of a tree structure that keep the TF structure. 

For each transformation in between two frames, it provides a PhaROSFrameRelativePoseAnnouncer that is kind of PhaROSTopicFlux, allowing all the functionalities as condition, tranformation but  multiple calbacks instead of just one, so, for all the interested in this calculation there is just one instance of calculation. 

transformation between: '/map' and: '/odom'  for: [ : pose |  ] .

In order to write a frame, it provides a PhaROSFrameRelativePoseWriter that write given poses to the related local frame and also send the information through and unique /tf topic writer. 

(transformation writerFor: aFrameID withParent: aParentFrameID) pose: aPose.
