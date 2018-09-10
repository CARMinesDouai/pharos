as yet unclassified
tex
	| op converter |
	op := StandardFileStream forceNewFileNamed: '/tmp/pharos-documentation.mkd'.
	op nextPutAll: self documentation.
	op close. 
	Deprecation raiseWarning: false.
	OSProcess command: 'mmd2tex < /tmp/pharos-documentation.mkd > /tmp/pharos-documentation.tex'.
	Deprecation raiseWarning: true.