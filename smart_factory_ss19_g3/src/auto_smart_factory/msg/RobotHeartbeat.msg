# robot id
string id

# is the robot idle?
bool idle

# robot position
geometry_msgs/Point position

# robot orientation
float32 orientation

# battery state of robot 0 - 100
float32 battery_level

# eta for a robot
float32 eta

# is it carring a package?
bool with_package

# package queue size
uint8 queue_length
