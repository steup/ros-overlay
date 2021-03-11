# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="This package provides a behavior trees core."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/BehaviorTree/${PN}-release/archive/release/crystal/${PN}/2.4.3-1.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-crystal/ament_cmake_gtest )
	net-libs/cppzmq
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
