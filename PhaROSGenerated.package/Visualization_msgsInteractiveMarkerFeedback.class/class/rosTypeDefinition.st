as yet unclassified
rosTypeDefinition 
^' int8 KEEP_ALIVE=0
 int8 POSE_UPDATE=1
 int8 MENU_SELECT=2
 int8 BUTTON_CLICK=3
 int8 MOUSE_DOWN=4
 int8 MOUSE_UP=5
 std_msgs/Header header
 string client_id
 string marker_name
 string control_name
 int8 event_type
 geometry_msgs/Pose pose
 int32 menu_entry_id
 geometry_msgs/Point mouse_point
 bool mouse_point_valid
'