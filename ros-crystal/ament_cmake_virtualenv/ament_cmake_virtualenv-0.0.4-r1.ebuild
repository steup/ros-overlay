# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Bundle python requirements in a ament package via virtualenv."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/esol-community/ament_virtualenv-release/archive/release/crystal/${PN}/0.0.4-1.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-crystal/ament_cmake_copyright )
	test? ( ros-crystal/ament_cmake_lint_cmake )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_core
	ros-crystal/ament_cmake_test
	ros-crystal/ament_virtualenv
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
