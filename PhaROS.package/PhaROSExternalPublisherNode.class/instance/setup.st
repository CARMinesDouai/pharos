as yet unclassified
setup
	
	msg := topic newMessage.	
	stream timeout: self timeout.
	tries := 0.
	
	process := self paralellize looping spinOnce asStickyReference.

