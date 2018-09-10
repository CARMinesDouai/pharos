scripts
scriptTopicSubscribingExample
"
	This example shows how to subscribe to a ROS topic.
	
	How to use:
	  1) in PhaROS, execute: 	self new scriptTopicSubscribingExample
	  2) in a terminal, execute:   rostopic pub -r 10 /example std_msgs/String ''hello there''
	
	
	You just need a subscriber object (created using buildConnectionFor: aTopicID) and configure it with a callback (block).
	Then, when you send it the #connect message it will make the proper connections. 

	cf. PhaROSExamplePackage for more scripts example
"
	
	(self controller node buildConnectionFor: 'example' ) 
								typedAs: 'std_msgs/String'; 
								for: [ : string |  "this is a callback" 
									Transcript show: string data.
									self log: string data ];
								connect .
														
