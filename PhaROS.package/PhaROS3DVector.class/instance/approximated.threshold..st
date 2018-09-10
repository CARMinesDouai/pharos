operators
approximated: anOtherPosition threshold: anScalar

	| cmp |
	cmp := self - anOtherPosition.
	^ cmp x < anScalar and: [ cmp y < anScalar and: [ cmp z < anScalar ]] .