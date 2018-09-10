scripts-publish/subscribe
scriptSubscribingExample

	(self controller node buildConnectionFor: 'example' ) 
								typedAs: 'std_msgs/String'; 
								for: [ : string |  "this is a callback" 
									self log: 'Loulou received: ',string data,String lf ];
								connect .
														
