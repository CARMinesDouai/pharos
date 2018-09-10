accessing
package
	| p |
	p := (self argumentAt: 1).
	(p indexOf: $-) = 1 ifTrue: [ ^ self exitFailure: 'The package name is not optional and it must be the first parameter' ].
	^ p.