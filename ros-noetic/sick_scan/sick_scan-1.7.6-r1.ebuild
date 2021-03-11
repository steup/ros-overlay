# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="A ROS driver for the SICK TiM and SICK MRS series of lidars.\
	This pack[...]"
HOMEPAGE="http://wiki.ros.org/sick_scan"
SRC_URI="https://github.com/SICKAG/${PN}-release/archive/release/noetic/${PN}/1.7.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_updater
	ros-noetic/dynamic_reconfigure
	ros-noetic/message_runtime
	ros-noetic/perception_pcl
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
