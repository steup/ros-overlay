# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.com/ApexAI/${PN}-release/repository/archive.tar.gz?ref=release/eloquent/${PN}/0.0.1-1 -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ament_cmake_gtest
	ros-eloquent/osrf_testing_tools_cpp
	test? ( ros-eloquent/ament_cmake_pclint )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
