actions
startUpTurtle
	process := PhaROSSystemLauncher instance roslaunchForTests: 
	'
	<launch>
		<node name="turtlesim" pkg="turtlesim" type="turtlesim_node" />
	</launch>'.