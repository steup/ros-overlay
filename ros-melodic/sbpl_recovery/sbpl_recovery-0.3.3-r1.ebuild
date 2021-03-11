# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="A recovery behavior that uses the sbpl lattice planner and the pose\
	fo[...]"
HOMEPAGE="http://wiki.ros.org/sbpl_recovery"
SRC_URI="https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/${PN}/0.3.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/base_local_planner
	ros-melodic/costmap_2d
	ros-melodic/nav_core
	ros-melodic/pluginlib
	ros-melodic/pose_follower
	ros-melodic/roscpp
	ros-melodic/sbpl_lattice_planner
	ros-melodic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
