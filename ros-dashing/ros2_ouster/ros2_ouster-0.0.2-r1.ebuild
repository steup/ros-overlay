# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="ROS2 Drivers for the Ouster OS-1 Lidar"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}_drivers-release/archive/release/dashing/${PN}/0.0.2-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/builtin_interfaces
	ros-dashing/geometry_msgs
	ros-dashing/launch
	ros-dashing/launch_ros
	ros-dashing/ouster_msgs
	ros-dashing/pcl_conversions
	ros-dashing/rclcpp
	ros-dashing/rclcpp_components
	ros-dashing/rclcpp_lifecycle
	ros-dashing/sensor_msgs
	ros-dashing/std_srvs
	ros-dashing/tf2_geometry_msgs
	ros-dashing/tf2_ros
	ros-dashing/visualization_msgs
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
