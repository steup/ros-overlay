# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="flexbe_core provides the core smach extension for the FlexBE behavior engine."
HOMEPAGE="http://ros.org/wiki/flexbe_core"
SRC_URI="https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/${PN}/1.2.5-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/flexbe_msgs
	ros-kinetic/rospy
	ros-kinetic/smach_ros
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
