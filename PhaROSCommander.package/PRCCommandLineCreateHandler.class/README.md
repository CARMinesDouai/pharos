usage: pharos create PACKAGE [OPTIONS]
 
Options:
   --help                     Shows this text
   --location=...             Absolute path to a valid catkin workspace (not source folder. 
                              The workspace. By example /home/user/workspace ). 
                              Default value is ~/Pharo-ws/
   --silent={true|false}      If silent is false you will be able to see the installation of the output image 
                              Default value is true. 
   --version={ 20 | 30 | 40 | stable | alpha}  Pharo version to use. 
                                               Default value is stable
    --force-new                DELETE the package if it exists in the pointed location. 
   --dev                      Load the bleedingEdge version of PhaROS