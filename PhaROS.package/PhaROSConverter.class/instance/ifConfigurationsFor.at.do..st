as yet unclassified
ifConfigurationsFor: anArrayConf at: aClass do: aBlock
	| pragmas |
	pragmas :=  (Pragma allNamed: #from:to: in: aClass class) select: [
		: pragma |  pragma arguments = anArrayConf
	].
	pragmas size > 0 ifTrue: [ aBlock value: pragmas ]