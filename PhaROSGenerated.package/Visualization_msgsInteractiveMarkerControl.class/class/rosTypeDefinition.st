as yet unclassified
rosTypeDefinition 
^' int8 INHERIT=0
 int8 FIXED=1
 int8 VIEW_FACING=2
 int8 NONE=0
 int8 MENU=1
 int8 BUTTON=2
 int8 MOVE_AXIS=3
 int8 MOVE_PLANE=4
 int8 ROTATE_AXIS=5
 int8 MOVE_ROTATE=6
 int8 MOVE_3D=7
 int8 ROTATE_3D=8
 int8 MOVE_ROTATE_3D=9
 string name
 geometry_msgs/Quaternion orientation
 int8 orientation_mode
 int8 interaction_mode
 bool always_visible
 visualization_msgs/Marker[] markers
 bool independent_marker_orientation
 string description
'