# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="roslaunch scripts for starting the TurtleBot3"
HOMEPAGE="http://wiki.ros.org/turtlebot3_bringup"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/${PN}/1.2.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_msgs
	ros-melodic/hls_lfcd_lds_driver
	ros-melodic/joint_state_publisher
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/rosserial_python
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/turtlebot3_description
	ros-melodic/turtlebot3_msgs
	ros-melodic/turtlebot3_teleop
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
