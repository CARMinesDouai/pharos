related class building
installConstantsIn: aClass
	
	self definition constants do: [ :constant |
		aClass class compile: constant classAccessor .
	].