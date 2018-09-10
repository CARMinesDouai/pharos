frame calculations
poseRelativeTo: aFrame
	| frame topParent depth calculator target MAX_DEPTH keepRolling  auxParent |

	frame := self .
      topParent := frame.
 	depth := 0.
	target := aFrame. 
	MAX_DEPTH := 100. 
	calculator := PhaROSTFFrameCalculator new .

	keepRolling := true. 
	[ frame notNil and: [ keepRolling ]] whileTrue: [
	    auxParent := frame parent.
	    auxParent ifNil: [
	        topParent := frame.
	        keepRolling := false. 
	    ] ifNotNil: [
		    (frame == target) ifTrue: [
		        ^ calculator targetParentOfSource.
		    ].

		    calculator accumulateToSource:frame .

		    topParent := frame.
		    frame := auxParent.
		    depth := depth + 1.
		    (depth > MAX_DEPTH) ifTrue: [ self error: 'possible recursion' ].
	  ]
	].

	frame := target.
	depth := 0.

	[ frame ~= topParent ] whileTrue: [
	    auxParent := frame parent.
	    auxParent ifNil: [ self error:( ' Unexpected nil parent calculating transformation from  {1} to {2}' format: { name . aFrame name }) ].
	    (frame = self) ifTrue: [ ^ calculator sourceParentOfTarget ].
	    calculator accumulateToTarget: frame.
	   
 	    frame := auxParent.
	    depth := depth + 1.
	    (depth > MAX_DEPTH) ifTrue: [ self error: 'possible recursion' ].
	].

	^ calculator fullPath.
