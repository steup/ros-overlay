# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Refactored map server for ROS2 Navigation"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/${PN}/0.4.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/launch_ros
	ros-foxy/launch_testing
	ros-foxy/nav2_msgs
	ros-foxy/nav2_util
	ros-foxy/nav_msgs
	ros-foxy/rclcpp
	ros-foxy/rclcpp_lifecycle
	ros-foxy/std_msgs
	ros-foxy/tf2
	ros-foxy/yaml_cpp_vendor
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cmake_pytest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/launch )
	test? ( ros-foxy/launch_testing )
	virtual/imagemagick-tools
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/nav2_common
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
