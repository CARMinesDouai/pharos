A PhaROSPackage class is the representation of a catkin package.

Meta infos are stored on class side.
If they are changed, you must regenerate the catkin files to reflect those changes by: 
	PhaROSCatkinDeployer instance  reinstallAllTypes

methods whose selector starts with 'script' are automatically stored in the catkin package and can then be used using rosrun.

Example:

rosrun <catkinPackageName> headless <scriptName>