*PhaROS
multiplyQuaternionByYou: aQuaternion
	^ PhaROSQuaternion x: aQuaternion x * self y: aQuaternion y * self  z: aQuaternion z * self  w: aQuaternion w * self .