# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="multikey_teleop is a node for robot teleoperation.\
	  It uses keyboard [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/easymov/multikey_teleop-release/archive/release/kinetic/multikey_teleop/1.0.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	dev-python/python-xlib
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
