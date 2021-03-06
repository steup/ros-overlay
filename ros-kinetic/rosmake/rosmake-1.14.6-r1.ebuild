# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="rosmake is a ros dependency aware build tool which can be used to\
	 bui[...]"
HOMEPAGE="http://ros.org/wiki/rosmake"
SRC_URI="https://github.com/ros-gbp/ros-release/archive/release/kinetic/${PN}/1.14.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	dev-python/rospkg
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
