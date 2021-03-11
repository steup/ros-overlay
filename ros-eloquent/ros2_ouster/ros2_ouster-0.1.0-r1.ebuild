# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="ROS2 Drivers for the Ouster OS-1 Lidar"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}_drivers-release/archive/release/eloquent/${PN}/0.1.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/builtin_interfaces
	ros-eloquent/geometry_msgs
	ros-eloquent/launch
	ros-eloquent/launch_ros
	ros-eloquent/ouster_msgs
	ros-eloquent/pcl_conversions
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_components
	ros-eloquent/rclcpp_lifecycle
	ros-eloquent/sensor_msgs
	ros-eloquent/std_srvs
	ros-eloquent/tf2_geometry_msgs
	ros-eloquent/tf2_ros
	ros-eloquent/visualization_msgs
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
