# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="The Kinematics and Dynamics Library \(KDL\) defines a tree structure\
   to[...]"
HOMEPAGE="https://github.com/ros2/kdl_parser"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/2.2.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/orocos_kdl
	ros-crystal/tinyxml_vendor
	ros-crystal/urdf
	ros-crystal/urdfdom_headers
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
