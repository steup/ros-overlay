# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The rtmros_hironx package is an operating interface via ROS and OpenRTM, fo[...]"
HOMEPAGE="http://ros.org/wiki/rtmros_hironx/"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/kinetic/${PN}/2.1.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/hironx_calibration
	ros-kinetic/hironx_moveit_config
	ros-kinetic/hironx_ros_bridge
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
