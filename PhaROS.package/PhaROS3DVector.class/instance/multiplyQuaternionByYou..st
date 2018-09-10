operators
multiplyQuaternionByYou: aQuaternion
"{
    return Quaternion( 
        q.w() * w.x() + q.y() * w.z() - q.z() * w.y(),
        q.w() * w.y() + q.z() * w.x() - q.x() * w.z(),
        q.w() * w.z() + q.x() * w.y() - q.y() * w.x(),
        -q.x() * w.x() - q.y() * w.y() - q.z() * w.z());
}"
	^ PhaROSQuaternion 
	         x: ((aQuaternion w * self x) + (aQuaternion y * self z) - (aQuaternion z * self y))
		   y: ((aQuaternion w * self y) + (aQuaternion z * self x) - (aQuaternion x * self z))
		   z: ((aQuaternion w * self z) + (aQuaternion x * self y) - (aQuaternion y * self x))
		   w: (((aQuaternion x* -1) * self x ) - (aQuaternion y * self y) - (aQuaternion z * self z)).
