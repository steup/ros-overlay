# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Dynamixel-Workbench is dynamixel solution for ROS.\
	This metapackage al[...]"
HOMEPAGE="http://wiki.ros.org/dynamixel_workbench"
SRC_URI="https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/melodic/${PN}/2.0.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamixel_workbench_controllers
	ros-melodic/dynamixel_workbench_operators
	ros-melodic/dynamixel_workbench_single_manager
	ros-melodic/dynamixel_workbench_single_manager_gui
	ros-melodic/dynamixel_workbench_toolbox
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
