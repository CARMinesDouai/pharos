service
finalize

	processResult finalize. 
	processResult := nil.
	publishers ifNotNil: [
		publishers do: #finalize.
		publishers removeAll.
	].
	publisherFetcher := nil.
	owner := nil.