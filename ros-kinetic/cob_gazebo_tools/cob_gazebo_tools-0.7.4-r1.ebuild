# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The cob_gazebo_tools package provides helper tools for the gazebo simulation"
HOMEPAGE="http://ros.org/wiki/cob_gazebo_tools"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/${PN}/0.7.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gazebo_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/roslib
	ros-kinetic/rospy
	ros-kinetic/tf
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
