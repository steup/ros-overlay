# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Package containing demos for lifecycle implementation"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/demos-release/archive/release/eloquent/${PN}/0.8.4-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/lifecycle_msgs
	ros-eloquent/rclcpp_lifecycle
	ros-eloquent/std_msgs
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/ros_testing )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
