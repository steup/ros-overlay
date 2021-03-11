# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Generate the type support for C++ messages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/eloquent/${PN}/0.8.0-2.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/poco_vendor
	ros-eloquent/rmw_implementation
	ros-eloquent/rosidl_generator_c
	ros-eloquent/rosidl_typesupport_c
	ros-eloquent/rosidl_typesupport_interface
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	dev-libs/poco
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
	ros-eloquent/rosidl_typesupport_connext_cpp
	ros-eloquent/rosidl_typesupport_introspection_cpp
	ros-eloquent/rosidl_typesupport_opensplice_cpp
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
