# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Supporting utilities for ROSflight packages"
HOMEPAGE="http://rosflight.org"
SRC_URI="https://github.com/rosflight/rosflight-release/archive/release/melodic/${PN}/1.3.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gazebo_msgs
	ros-melodic/geometry_msgs
	ros-melodic/rosbag
	ros-melodic/roscpp
	ros-melodic/rosflight
	ros-melodic/rosflight_firmware
	ros-melodic/rosflight_msgs
	ros-melodic/rosflight_sim
	ros-melodic/rosgraph_msgs
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_srvs
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
