generating - CMakeListsTxt
makeFileFor: aPackage
^(deployedTypes,deployedServices) isEmpty not ifTrue: [ 	
	' 
cmake_minimum_required({1})
project({2})
find_package(catkin REQUIRED COMPONENTS message_generation message_runtime roscpp rospy )

{3}

add_message_files(
   FILES
   {4}
 )

add_service_files(
   FILES
   {5}
)

generate_messages(
   DEPENDENCIES
  {6}
)
catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS message_runtime
)
		' format: { 
			self makeVersion . 
			aPackage catkinPackageName .
			self dependenciesForMake inject:'' into: [ :acc :type | acc, ' find_package (',type,')', String lf ] .
			deployedTypes inject:'' into: [ :acc :type | acc, type,'.msg', String lf ] .
			deployedServices inject:'' into: [ :acc :type | acc, type,'.srv', String lf ] .
			self dependenciesForMake inject:'' into: [ :acc :type | acc, type, String lf ] .
		 }.	
 ] ifFalse: [ 
'
cmake_minimum_required({1})
project({2})
find_package(catkin REQUIRED)
catkin_package()
' format:{ self makeVersion . aPackage catkinPackageName }.
	

 ]
