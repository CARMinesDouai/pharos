as yet unclassified
filein: aFileName
	| fl buffer |
	
	fl := StandardFileStream readOnlyFileNamed: aFileName.
	buffer := fl upToEnd.
	('---' split: buffer) do: [
		: entity | 
		|re|
		entity size > 3 ifTrue: [
			self class compile: 'DoIt ^', entity.
			re := self DoIt.
			entities at: re id put: re.
		] ifFalse:[ 
			
		]
	].
