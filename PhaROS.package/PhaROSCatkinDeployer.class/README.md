PhaROSCatkinDeployer is used to manage the generation of files of a PhaROSPackage in its corresponding catkin package.

It is responsible to generate: 
- CMakeFileLists.txt
- package.xml

To recompile the catkin workspace using catkin_make

To automatically generate scripts files for script methods added in the PhaROSPackage class.

A singleton instance of this class is created and configured by the PhaROSCommander when the PhaROS image is set up. The commander execute the following code:

PhaROSCatkinDeployer setupImageForCurrentCatkinPackage
