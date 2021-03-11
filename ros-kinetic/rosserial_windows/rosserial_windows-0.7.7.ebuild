# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="rosserial for Windows platforms."
HOMEPAGE="http://ros.org/wiki/rosserial_windows"
SRC_URI="https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/${PN}/0.7.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_runtime
	ros-kinetic/rospy
	ros-kinetic/rosserial_client
	ros-kinetic/rosserial_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/geometry_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
