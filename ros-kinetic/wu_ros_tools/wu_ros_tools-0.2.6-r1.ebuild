# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="A collection of tools for making a variety of generic ROS-related tasks easier."
HOMEPAGE="http://ros.org/wiki/wu_ros_tools"
SRC_URI="https://github.com/wu-robotics/${PN}/archive/release/kinetic/${PN}/0.2.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/easy_markers
	ros-kinetic/joy_listener
	ros-kinetic/kalman_filter
	ros-kinetic/rosbaglive
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
