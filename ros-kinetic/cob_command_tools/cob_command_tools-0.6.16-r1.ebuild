# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The cob_command_tools stack provides tools, for operating Care-O-bot."
HOMEPAGE="http://ros.org/wiki/cob_command_tools"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/kinetic/${PN}/0.6.16-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_command_gui
	ros-kinetic/cob_dashboard
	ros-kinetic/cob_helper_tools
	ros-kinetic/cob_interactive_teleop
	ros-kinetic/cob_monitoring
	ros-kinetic/cob_script_server
	ros-kinetic/cob_teleop
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
