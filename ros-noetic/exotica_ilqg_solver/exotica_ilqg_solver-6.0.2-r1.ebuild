# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="ILQG Solver \(Todorov and Li, 2004\)"
HOMEPAGE="https://github.com/ipab-slmc/exotica"
SRC_URI="https://github.com/ipab-slmc/exotica-release/archive/release/noetic/${PN}/6.0.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/exotica_core
	ros-noetic/exotica_python
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
