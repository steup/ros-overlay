# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="A bond allows two processes, A and B, to know when the other has\
	termi[...]"
HOMEPAGE="http://www.ros.org/wiki/bond_core"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.8.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/bond
	ros-noetic/bondcpp
	ros-noetic/bondpy
	ros-noetic/smclib
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
