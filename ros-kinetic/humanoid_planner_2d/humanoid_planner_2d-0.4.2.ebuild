# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="humanoid_planner_2d - provides a simple 2D path planner as wrapper around S[...]"
HOMEPAGE="http://wiki.ros.org/humanoid_planner_2d"
SRC_URI="https://github.com/ROBOTIS-GIT-release/humanoid_navigation-release/archive/release/kinetic/${PN}/0.4.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/gridmap_2d
	ros-kinetic/roscpp
	ros-kinetic/sbpl
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
