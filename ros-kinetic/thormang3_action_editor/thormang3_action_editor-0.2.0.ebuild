# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The thormang3_action_editor package\
	This package is a action editor fo[...]"
HOMEPAGE="http://wiki.ros.org/thormang3_action_editor"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Tools-release/archive/release/kinetic/${PN}/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamixel_sdk
	ros-kinetic/robotis_controller
	ros-kinetic/robotis_device
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/thormang3_action_module
	ros-kinetic/thormang3_manager
	sys-libs/ncurses
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
