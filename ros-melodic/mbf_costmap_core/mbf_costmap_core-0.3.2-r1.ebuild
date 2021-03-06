# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="This package provides common interfaces for navigation specific robot actio[...]"
HOMEPAGE="http://wiki.ros.org/move_base_flex/mbf_costmap_core"
SRC_URI="https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/${PN}/0.3.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/costmap_2d
	ros-melodic/geometry_msgs
	ros-melodic/mbf_abstract_core
	ros-melodic/mbf_utility
	ros-melodic/nav_core
	ros-melodic/std_msgs
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
