as yet unclassified
configure
	"
		http://wiki.ros.org/ROS/Slave_API
		so far, only 5 callbacks of the API are implemented out of 10
	"

	XMLRPCService atPort: xml 
					serve: {
						#getBusInfo -> {self -> #getBusInfo: } .
						#getPid -> { self -> #getPid: } .
						#requestTopic -> { self -> #requestTopic:for:availableFor: } .
						#getPublications -> { self -> #getPublications: } .
						#paramUpdate -> { self -> #from:update:with: }
					} asXMLRPCHttpModule 
					at:'/' .
					
	server := PhaROSTcpServer startOn: tcp named: ' related TCP Service- Port:', tcp asString for: self.