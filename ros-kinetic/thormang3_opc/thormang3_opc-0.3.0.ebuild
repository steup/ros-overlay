# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="ROS packages for the thormang3_opc \(meta package\)"
HOMEPAGE="http://wiki.ros.org/thormang3_opc"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/${PN}/0.3.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/thormang3_action_script_player
	ros-kinetic/thormang3_demo
	ros-kinetic/thormang3_foot_step_generator
	ros-kinetic/thormang3_navigation
	ros-kinetic/thormang3_offset_tuner_client
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
