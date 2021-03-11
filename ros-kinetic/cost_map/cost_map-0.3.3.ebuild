# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Meta-package for the universal cost map library."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/kinetic/${PN}/0.3.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cost_map_core
	ros-kinetic/cost_map_msgs
	ros-kinetic/cost_map_ros
	ros-kinetic/cost_map_visualisations
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
