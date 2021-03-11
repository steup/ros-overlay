# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Demo of safe_teleop in stage"
HOMEPAGE="http://ros.org/wiki/safe_teleop_stage"
SRC_URI="https://github.com/ros-gbp/shared_autonomy_manipulation-release/archive/release/melodic/${PN}/0.0.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/joy
	ros-melodic/safe_teleop_base
	ros-melodic/stage
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
