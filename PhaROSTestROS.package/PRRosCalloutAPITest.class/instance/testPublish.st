publish-subscribe
testPublish
	| msg  |
	
	PRRosCalloutAPI call: '/reset'.

	msg :=
'"linear:
  x: 2.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 1.8"'.
	
	PRRosCalloutAPI publish: msg ofType: 'geometry_msgs/Twist' on: '/turtle1/cmd_vel'.

	self isTurtleAt: { 6.60281658173 . 6.93898963928 .  1.81439995766 . 0.0 . 0.0 }.
