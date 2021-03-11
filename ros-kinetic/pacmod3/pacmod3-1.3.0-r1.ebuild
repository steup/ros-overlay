# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="AutonomouStuff PACMod v3 Driver Package"
HOMEPAGE="http://wiki.ros.org/pacmod3"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/kinetic/${PN}/1.3.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/can_msgs
	ros-kinetic/pacmod_msgs
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
