# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Provides a signal/slot mechanism \(in the same vein as qt sigslots,\
	 b[...]"
HOMEPAGE="http://ros.org/wiki/ecl_sigslots"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/${PN}/1.0.1-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/ecl_config
	ros-crystal/ecl_license
	ros-crystal/ecl_threads
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_ros
	ros-crystal/ecl_build
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
