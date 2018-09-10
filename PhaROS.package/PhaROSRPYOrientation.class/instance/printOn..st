printing
printOn: aStream 
	('RPY({1},{2},{3})' format: { roll . pitch . yaw }) printOn: aStream.