# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Provides a portable set of time functions that are especially useful for\
 [...]"
HOMEPAGE="http://wiki.ros.org/ecl_time_lite"
SRC_URI="https://github.com/yujinrobot-release/ecl_lite-release/archive/release/dashing/${PN}/1.0.3-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/ecl_build
	ros-dashing/ecl_config
	ros-dashing/ecl_errors
	ros-dashing/ecl_license
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
