as yet unclassified
eulerFromMatrix: aRotationMatrix

	| i j k rotationMatrix cy x y z |

	i := 1. 
	j := 2.
	k := 3.
	
	rotationMatrix  := aRotationMatrix atRows: 1 to: 3 columns: 1 to: 3.
	
	cy := ((rotationMatrix at: i at: i) * (rotationMatrix at: i at: i) ) + ((rotationMatrix at: j at: i) * (rotationMatrix at: j at: i) ).
	cy := cy sqrt.
	
	cy > Float epsilon ifTrue: [
		x := (rotationMatrix at: k at: j) arcTan: (rotationMatrix at: k at: k).
		y := ((rotationMatrix at: k at: i) * -1) arcTan: cy.
		z := (rotationMatrix at: j at: i) arcTan: (rotationMatrix at: i at: i).
	] ifFalse: [
		x := ((rotationMatrix at: j at: k) * -1) arcTan:  (rotationMatrix at: j at: j).
		y := ((rotationMatrix at: k at: i) * -1) arcTan: cy.
		z := 0.0
	].
	
	^ { x . y . z }