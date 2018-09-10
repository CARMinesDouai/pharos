as yet unclassified
quaternionMatrixFor: aQuaternion

 "Return homogeneous rotation matrix from quaternion. "

| vector column  dot | 

	
	vector := Matrix rows:1 columns:4 tabulate: [ :r :c | (aQuaternion at: r+c - 1) asFloat ].
	column :=  Matrix rows:4 columns:1 tabulate: [ :r :c | (aQuaternion at: r+c - 1) asFloat].
	
	
	dot := vector dotProduct: column.
	
	
	dot < Float epsilon ifTrue: [
		^ Matrix identity:4.	
	].
	
	
	vector := vector * (( 2.0 / dot) sqrt ).
	vector := vector outerProduct: vector.
	
vector := {
	" Row 1 "
	(1.0 - (vector at: 2 at:2) - (vector at:3 at:3)) .
	(vector at:1 at:2) - (vector at:3 at:4) . 
	(vector at:1 at:3) + (vector at:2 at:4) .
	0.0 .
	
	" Row 2 "
	(vector at:1 at:2) + (vector at:3 at:4) . 	
	(1.0 - (vector at: 1 at:1) - (vector at:3 at:3)) .
	(vector at:2 at:3) - (vector at:1 at:4) .
	0.0 .
	
	" Row 3 "
	(vector at:1 at:3) - (vector at:2 at:4) .
	(vector at:2 at:3) + (vector at:1 at:4) .
	(1.0 - (vector at: 1 at:1) - (vector at:2 at:2)) .
	0.0 .
	
	"Row 4"
	0.0 .
	0.0 .
	0.0 .
	1.0
}.
	^ Matrix rows: 4 columns: 4 tabulate: [ :r :c | vector at: ((r-1*4)+c)  ]. 
























