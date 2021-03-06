# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Generate the type support for C++ messages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/foxy/${PN}/1.0.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/rcpputils
	ros-foxy/rosidl_runtime_c
	ros-foxy/rosidl_runtime_cpp
	ros-foxy/rosidl_typesupport_c
	ros-foxy/rosidl_typesupport_interface
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
	ros-foxy/rosidl_typesupport_connext_cpp
	ros-foxy/rosidl_typesupport_introspection_cpp
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
