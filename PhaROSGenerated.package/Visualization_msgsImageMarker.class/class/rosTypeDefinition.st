as yet unclassified
rosTypeDefinition 
^' int8 CIRCLE=0
 int8 LINE_STRIP=1
 int8 LINE_LIST=2
 int8 POLYGON=3
 int8 POINTS=4
 int8 ADD=0
 int8 REMOVE=1
 std_msgs/Header header
 string ns
 int32 id
 int32 type
 int32 action
 geometry_msgs/Point position
 float32 scale
 std_msgs/ColorRGBA outline_color
 int8 filled
 std_msgs/ColorRGBA fill_color
 duration lifetime
 geometry_msgs/Point[] points
 std_msgs/ColorRGBA[] outline_colors
'