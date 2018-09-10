as yet unclassified
rosTypeDefinition 
^' int8 BUMPER_RIGHT=1
 int8 BUMPER_CENTRE=2
 int8 BUMPER_LEFT=4
 int8 WHEEL_DROP_RIGHT=1
 int8 WHEEL_DROP_LEFT=2
 int8 CLIFF_RIGHT=1
 int8 CLIFF_CENTRE=2
 int8 CLIFF_LEFT=4
 int8 BUTTON0=1
 int8 BUTTON1=2
 int8 BUTTON2=4
 int8 DISCHARGING=0
 int8 DOCKING_CHARGED=2
 int8 DOCKING_CHARGING=6
 int8 ADAPTER_CHARGED=18
 int8 ADAPTER_CHARGING=22
 int8 OVER_CURRENT_LEFT_WHEEL=1
 int8 OVER_CURRENT_RIGHT_WHEEL=2
 int8 OVER_CURRENT_BOTH_WHEELS=3
 int8 DIGITAL_INPUT0=1
 int8 DIGITAL_INPUT1=2
 int8 DIGITAL_INPUT2=4
 int8 DIGITAL_INPUT3=8
 int8 DB25_TEST_BOARD_CONNECTED=64
 std_msgs/Header header
 uint16 time_stamp
 int8 bumper
 int8 wheel_drop
 int8 cliff
 uint16 left_encoder
 uint16 right_encoder
 int8 left_pwm
 int8 right_pwm
 int8 buttons
 int8 charger
 int8 battery
 uint16[] bottom
 int8[] current
 int8 over_current
 uint16 digital_input
 uint16[] analog_input
'