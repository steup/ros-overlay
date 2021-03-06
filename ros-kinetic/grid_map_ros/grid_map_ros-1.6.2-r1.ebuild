# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="ROS interface for the grid map library to manage two-dimensional grid maps [...]"
HOMEPAGE="http://github.com/anybotics/grid_map"
SRC_URI="https://github.com/anybotics/grid_map-release/archive/release/kinetic/${PN}/1.6.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/geometry_msgs
	ros-kinetic/grid_map_core
	ros-kinetic/grid_map_cv
	ros-kinetic/grid_map_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/rosbag
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
