# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Contains transforms \(e.g. differential drive inverse kinematics\)\
	for[...]"
HOMEPAGE="http://wiki.ros.org/ecl_mobile_robot"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/${PN}/1.0.7-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ecl_build
	ros-eloquent/ecl_errors
	ros-eloquent/ecl_formatters
	ros-eloquent/ecl_geometry
	ros-eloquent/ecl_license
	ros-eloquent/ecl_linear_algebra
	ros-eloquent/ecl_math
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
