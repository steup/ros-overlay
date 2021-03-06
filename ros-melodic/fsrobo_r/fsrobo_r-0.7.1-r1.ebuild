# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Meta package for FSRobo-R"
HOMEPAGE="http://wiki.ros.org/fsrobo_r"
SRC_URI="https://github.com/FUJISOFT-Robotics/${PN}-release/archive/release/melodic/${PN}/0.7.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/fsrobo_r_bringup
	ros-melodic/fsrobo_r_description
	ros-melodic/fsrobo_r_driver
	ros-melodic/fsrobo_r_moveit_config
	ros-melodic/fsrobo_r_msgs
	ros-melodic/fsrobo_r_trajectory_filters
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
