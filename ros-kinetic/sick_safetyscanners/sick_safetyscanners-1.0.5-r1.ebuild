# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Provides an Interface to read the sensor output of a SICK\
  Safety Scanner"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SICKAG/${PN}-release/archive/release/kinetic/${PN}/1.0.5-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="ALv2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_updater
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/rqt_reconfigure
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
