# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="control_msgs contains base messages and actions useful for\
	controlling[...]"
HOMEPAGE="http://ros.org/wiki/control_msgs"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/crystal/${PN}/2.2.0-1.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/action_msgs
	ros-crystal/builtin_interfaces
	ros-crystal/geometry_msgs
	ros-crystal/rosidl_default_runtime
	ros-crystal/std_msgs
	ros-crystal/trajectory_msgs
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	ros-crystal/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
