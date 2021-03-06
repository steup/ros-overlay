# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Meta-package for the universal grid map library."
HOMEPAGE="http://github.com/anybotics/grid_map"
SRC_URI="https://github.com/anybotics/${PN}-release/archive/release/melodic/${PN}/1.6.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/grid_map_core
	ros-melodic/grid_map_cv
	ros-melodic/grid_map_demos
	ros-melodic/grid_map_filters
	ros-melodic/grid_map_loader
	ros-melodic/grid_map_msgs
	ros-melodic/grid_map_ros
	ros-melodic/grid_map_rviz_plugin
	ros-melodic/grid_map_visualization
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
