# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Simple example system for system_modes package."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/microROS/system_modes-release/archive/release/dashing/${PN}/0.2.0-3.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/rclcpp
	ros-dashing/rclcpp_lifecycle
	ros-dashing/system_modes
	test? ( ros-dashing/ament_cmake )
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
