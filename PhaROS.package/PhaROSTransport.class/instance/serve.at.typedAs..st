services
serve: aBlock at: aServiceName typedAs: aTypeID 
	| srv |
	
	srv := PhaROSServiceExposer new: aServiceName typedAs: aTypeID. 
	srv owner: node.
	master registerService: srv at: self comm rosrpc for: self comm url with: node name.
	srv serve: aBlock.
	
	^ srv.