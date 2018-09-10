convertions
asQuaternion 
	| arr |
	arr:= PhaROSGeometryTransformations new quaternationFromEulerFor: roll and: pitch and: yaw.
	^ PhaROSQuaternion x: (arr at:1) y: (arr at:2) z:(arr at:3)  w:(arr at:4). 