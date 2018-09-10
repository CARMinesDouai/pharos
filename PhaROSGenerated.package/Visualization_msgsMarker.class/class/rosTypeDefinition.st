as yet unclassified
rosTypeDefinition 
^' int8 ARROW=0
 int8 CUBE=1
 int8 SPHERE=2
 int8 CYLINDER=3
 int8 LINE_STRIP=4
 int8 LINE_LIST=5
 int8 CUBE_LIST=6
 int8 SPHERE_LIST=7
 int8 POINTS=8
 int8 TEXT_VIEW_FACING=9
 int8 MESH_RESOURCE=10
 int8 TRIANGLE_LIST=11
 int8 ADD=0
 int8 MODIFY=0
 int8 DELETE=2
 int8 DELETEALL=3
 std_msgs/Header header
 string ns
 int32 id
 int32 type
 int32 action
 geometry_msgs/Pose pose
 geometry_msgs/Vector3 scale
 std_msgs/ColorRGBA color
 duration lifetime
 bool frame_locked
 geometry_msgs/Point[] points
 std_msgs/ColorRGBA[] colors
 string text
 string mesh_resource
 bool mesh_use_embedded_materials
'