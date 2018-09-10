scripts
scriptTopicPublishingExample
"	
	How to use:
	  1) in PhaROS, execute: 	self new scriptTopicPublishingExample
	  2) in a terminal, execute:   rostopic echo /example 
"
	| publisher |

	"For publishing into a topic,you just need a publisher object. 
	You can obtain it asking to the related node like in the following code".
	
	publisher := self controller node 
						topicPublisher: 'example'
						typedAs: 'std_msgs/String'.

	"When data is actually sent you''l see a sequence of ping and pong. Otherwise you'' see pong alone"						
	[[
		2 second wait.
		publisher send:[ : string | 
			string data: 'You are receiving data :-)'.
			self log: 'ping'
		].
		self log: '  pong'
	] repeat] forkAt: Processor userBackgroundPriority.
