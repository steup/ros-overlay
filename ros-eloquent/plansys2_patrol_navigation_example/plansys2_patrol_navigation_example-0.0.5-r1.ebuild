# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="An example including Navigation"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/eloquent/${PN}/0.0.5-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/geometry_msgs
	ros-eloquent/nav2_msgs
	ros-eloquent/plansys2_domain_expert
	ros-eloquent/plansys2_executor
	ros-eloquent/plansys2_msgs
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_action
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
