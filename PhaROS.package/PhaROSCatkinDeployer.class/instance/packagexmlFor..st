generating - packageXml
packagexmlFor: aPackage

^(deployedServices , deployedTypes ) isEmpty not ifTrue: [ 
				
'<?xml version="1.0"?>
<package>
	 {1}
	  <build_depend>roscpp</build_depend>
	  <build_depend>rospy</build_depend>
	 {2}
	 {3}
</package>' format: {
		self packagexmlContentFor: aPackage. 
		self dependenciesForPackageXml  inject:'' into: [ :acc :type | acc, ('<build_depend>{1}</build_depend>' format: {type}), String lf ] .
		self dependenciesForPackageXml inject:'' into: [ :acc :type | acc, ('<run_depend>{1}</run_depend>' format: {type}), String lf ] .
	 }
] ifFalse: [ 
'<?xml version="1.0"?>
<package>
 {1}
</package>' format: {
	 self packagexmlContentFor: aPackage.   
 }
	
]