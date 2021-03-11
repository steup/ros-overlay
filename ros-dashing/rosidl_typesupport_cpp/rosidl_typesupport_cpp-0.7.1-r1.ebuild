# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Generate the type support for C++ messages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/dashing/${PN}/0.7.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/poco_vendor
	ros-dashing/rmw_implementation
	ros-dashing/rosidl_generator_c
	ros-dashing/rosidl_typesupport_c
	ros-dashing/rosidl_typesupport_interface
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	dev-libs/poco
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_ros
	ros-dashing/rosidl_typesupport_connext_cpp
	ros-dashing/rosidl_typesupport_introspection_cpp
	ros-dashing/rosidl_typesupport_opensplice_cpp
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
