tests
testTransformation
	| util |
	util := PhaROSGeometryTransformations new.
	(util  quaternationFromEulerFor: 0.0 and: 0.0 and: 0.0 ) with: #(0.0 0.0 0.0 1.0) do: [ :a :b | self assert: (a closeTo: b)].
	(util  quaternationFromEulerFor: 1.0 and: 0.0 and: 0.0 ) with: #(0.48 0.0 0.0 0.878) do: [ :a :b | self assert: (a closeTo: b)].
	(util  quaternationFromEulerFor: 0.0 and: 1.0 and: 0.0 ) with: #(0.0 -0.47900000000000004 0.0 0.878) do: [ :a :b | self assert: (a closeTo: b)].
	(util  quaternationFromEulerFor: 0.0 and: 0.0 and: 1.0 ) with: #(0.0 0.0 0.48 0.878) do: [ :a :b | self assert: (a closeTo: b)].
	(util  quaternationFromEulerFor: 1.0 and: 0.0 and: 1.0 ) with: #(0.421 0.23 0.421 0.771) do: [ :a :b | self assert: (a closeTo: b)].
	(util  quaternationFromEulerFor: 1.0 and: 1.0 and: 0.0 ) with: #(0.421 -0.42 -0.229 0.771) do: [ :a :b | self assert: (a closeTo: b)].
	(util  quaternationFromEulerFor: 0.0 and: 1.0 and: 1.0 ) with: #(-0.229 -0.42 0.421 0.771) do: [ :a :b | self assert: (a closeTo: b)].
	(util  quaternationFromEulerFor: 1.0 and: 1.0 and: 1.0 ) with: #(0.168 -0.167 0.168 0.5660000000000001) do: [ :a :b | self assert: (a closeTo: b)].
	

