accessing
distroFromSystem
	| distroFromSystem |
	distroFromSystem := OSProcess thisOSProcess waitForCommandOutput: 'rosversion -d'.
	distroFromSystem ifEmpty: [ ^self class defaultDistro ].
	^(distroFromSystem substrings: String lf) first