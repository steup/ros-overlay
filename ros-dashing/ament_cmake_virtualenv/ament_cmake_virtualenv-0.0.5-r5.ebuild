# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Bundle python requirements in a ament package via virtualenv."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/esol-community/ament_virtualenv-release/archive/release/dashing/${PN}/0.0.5-5.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/ament_virtualenv
	test? ( ros-dashing/ament_cmake_copyright )
	test? ( ros-dashing/ament_cmake_lint_cmake )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_core
	ros-dashing/ament_cmake_test
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
