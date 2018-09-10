run
run: node from: package

	^ OSProcess thisOSProcess command: (self rospath,'rosrun ', package, ' ', node).
	