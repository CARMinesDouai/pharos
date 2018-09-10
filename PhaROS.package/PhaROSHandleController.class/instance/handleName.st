accessing
handleName
	^ handleName ifNil: [ handleName := self defaultNodeName  ]. 