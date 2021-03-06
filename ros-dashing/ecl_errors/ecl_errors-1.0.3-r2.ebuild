# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="This library provides lean and mean error mechanisms.\
	It includes c st[...]"
HOMEPAGE="http://wiki.ros.org/ecl_errors"
SRC_URI="https://github.com/yujinrobot-release/ecl_lite-release/archive/release/dashing/${PN}/1.0.3-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/ecl_config
	ros-dashing/ecl_license
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_ros
	ros-dashing/ecl_build
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
