# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="C++ library for interfacing with iRobot\'s Create 1 and Create 2"
HOMEPAGE="http://wiki.ros.org/libcreate"
SRC_URI="https://github.com/AutonomyLab/${PN}-release/archive/release/melodic/${PN}/2.0.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/catkin
	dev-libs/boost[python]
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
