# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The mpc_local_planner package implements a plugin\
	to the base_local_pl[...]"
HOMEPAGE="http://wiki.ros.org/mpc_local_planner"
SRC_URI="https://github.com/rst-tu-dortmund/${PN}-release/archive/release/melodic/${PN}/0.0.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/base_local_planner
	ros-melodic/control_box_rst
	ros-melodic/costmap_2d
	ros-melodic/costmap_converter
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/interactive_markers
	ros-melodic/mbf_costmap_core
	ros-melodic/mbf_msgs
	ros-melodic/mpc_local_planner_msgs
	ros-melodic/nav_core
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/teb_local_planner
	ros-melodic/tf2
	ros-melodic/tf2_ros
	ros-melodic/visualization_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/tf2_eigen
	ros-melodic/tf2_geometry_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
