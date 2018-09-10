as yet unclassified
configure
	isError := 0.
	status := nil.
		XMLRPCService atPort: self port  
					serve: {
						#test -> {self -> #test } .
						#initPathWithStargazerIds: -> { self -> #initPathWithStargazerIds: } . 
						#goToNextId -> { self -> #goToNextId } .
						#status -> { self -> #status } .
						#currentLandmarkId -> { self -> #currentLandmarkId } .  
						#currentPosition -> { self -> #currentPosition } .  
						#parking -> { self -> #parking }.
						#cancel -> { self -> #cancel }.
						#stop -> { self -> #stop }.
						#mapHash -> { self -> #mapHash }.
						#recordPose -> { self -> #recordPose }.
						#setIn: -> { self -> #setIn:}
						
 					} asXMLRPCHttpModule 
					at:'/rpc' .
	

	