convertions
asRPY 
	| arr |
	arr := PhaROSGeometryTransformations new eulerFromQuaternation: x and: y  and:z  and:w. 
	^ PhaROSRPYOrientation roll: (arr at:1) pitch:(arr at:2)  yaw: (arr at:3).