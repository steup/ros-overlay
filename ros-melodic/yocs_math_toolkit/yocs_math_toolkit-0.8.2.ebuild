# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Math toolkit for Yujin open control system. This package is intended to con[...]"
HOMEPAGE="http://ros.org/wiki/yocs_math_toolkit"
SRC_URI="https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/${PN}/0.8.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ecl_build
	ros-melodic/ecl_config
	ros-melodic/ecl_exceptions
	ros-melodic/ecl_formatters
	ros-melodic/ecl_linear_algebra
	ros-melodic/geometry_msgs
	ros-melodic/roscpp
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
