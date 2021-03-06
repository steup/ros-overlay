# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="SainSmart USB relay driver controller"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DataspeedInc-release/${PN}-release/archive/release/kinetic/${PN}/0.0.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	dev-embedded/libftdi
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslib
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
