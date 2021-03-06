# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Launch and configuration files for calibrating hironx using the generic <a [...]"
HOMEPAGE="http://ros.org/wiki/hironx_calibration"
SRC_URI="https://github.com/tork-a/rtmros_hironx-release/archive/release/kinetic/${PN}/2.1.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/calibration_estimation
	ros-kinetic/calibration_launch
	ros-kinetic/kdl_parser
	ros-kinetic/openni2_launch
	ros-kinetic/orocos_kdl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
