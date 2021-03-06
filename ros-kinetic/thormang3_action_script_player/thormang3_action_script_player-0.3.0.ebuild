# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="This package provides a action script playing for thormang3.\
	It can be[...]"
HOMEPAGE="http://wiki.ros.org/thormang3_action_script_player"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/${PN}/0.3.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/robotis_controller_msgs
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/std_msgs
	ros-kinetic/thormang3_action_module_msgs
	dev-libs/boost
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
