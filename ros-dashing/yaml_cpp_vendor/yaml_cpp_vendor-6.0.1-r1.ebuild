# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalPr[...]"
HOMEPAGE="https://github.com/jbeder/yaml-cpp"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/6.0.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 MIT )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
