# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalPr[...]"
HOMEPAGE="https://github.com/jbeder/yaml-cpp"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/bouncy/${PN}/4.0.2-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 MIT )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
