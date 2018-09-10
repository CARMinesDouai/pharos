as yet unclassified
rosTypeDefinition 
^' int8 WIRED=1
 int8 WIRELESS=2
 string name
 string ip
 bool firewall
 gateway_msgs/ConnectionStatistics conn_stats
 gateway_msgs/Rule[] public_interface
 gateway_msgs/RemoteRule[] flipped_interface
 gateway_msgs/RemoteRule[] pulled_interface
'