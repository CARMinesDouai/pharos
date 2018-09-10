operators
multiplyQuaternionByYou: aQuaternion

^ PhaROSQuaternion x: ((aQuaternion w * self  x )+ (aQuaternion x * self  w) + (aQuaternion y * self  z) -( aQuaternion z * self  y)) 
					  y: 	((aQuaternion w * self  y) +( aQuaternion y * self  w) + (aQuaternion z * self  x) -( aQuaternion x * self  z))
					  z: ((aQuaternion w * self  z) + (aQuaternion z * self  w) +( aQuaternion x * self  y) - (aQuaternion y * self  x))
					  w: ((aQuaternion w * self  w) - ( aQuaternion x * self  x) - (aQuaternion y * self  y) - (aQuaternion z * self  z)). 





