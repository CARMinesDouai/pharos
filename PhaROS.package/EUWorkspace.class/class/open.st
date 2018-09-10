public
open

	|workspace|
	workspace := Workspace openContents: '"# Commands"
PhaROSTypeBrowser reset.
PhaROSSystem cleanAll.

ProxySwitch on.
ProxySwitch off.

"# Working from PhaROS on a non-ROS machine to a remote ROS"

phaROSMachineIp := ''10.1.16.206''.
OSEnvironment default setEnv: ''ROS_HOSTNAME'' value: phaROSMachineIp.

rosMasterIp := ''10.1.16.62''.
rosMasterUri := ''http://'',rosMasterIp,'':11311''.
OSEnvironment default setEnv: ''ROS_MASTER_URI'' value: rosMasterUri.

"launch a publisher to /example from PhaROS "
PhaROSExamplePackage new scriptTopicPublishingExample. 
'.
	workspace label: 'CAR Utils'.
	