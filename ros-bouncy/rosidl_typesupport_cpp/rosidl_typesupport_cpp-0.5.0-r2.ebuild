# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Generate the type support for C++ messages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/bouncy/${PN}/0.5.0-2.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/poco_vendor
	ros-bouncy/rmw_implementation
	ros-bouncy/rosidl_generator_c
	ros-bouncy/rosidl_typesupport_c
	ros-bouncy/rosidl_typesupport_interface
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
	dev-libs/poco
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake_ros
	ros-bouncy/rosidl_typesupport_connext_cpp
	ros-bouncy/rosidl_typesupport_introspection_cpp
	ros-bouncy/rosidl_typesupport_opensplice_cpp
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
