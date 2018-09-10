running
setUp
	OSProcess command:'rosrun turtlesim turtlesim_node __name:=turtle1'.
	2 seconds wait.
	"OSProcess command: 'rostopic echo /turtle1/cmd_vel __name:=turtle_echo'.
	OSProcess command:'rosrun turtlesim turtle_teleop_key __name:=turtle_teleop'.
	1 seconds wait."
	