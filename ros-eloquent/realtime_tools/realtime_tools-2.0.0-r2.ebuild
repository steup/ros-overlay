# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Contains a set of tools that can be used from a hard\
	realtime thread, [...]"
HOMEPAGE="http://ros.org/wiki/realtime_tools"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/eloquent/${PN}/2.0.0-2.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_action
	test? ( ros-eloquent/ament_cmake_gmock )
	test? ( ros-eloquent/rclcpp_action )
	test? ( ros-eloquent/test_msgs )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
