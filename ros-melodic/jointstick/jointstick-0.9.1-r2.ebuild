# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Move any joint with any controller!"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gstavrinos/${PN}-release/archive/release/melodic/${PN}/0.9.1-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/controller_manager_msgs
	ros-melodic/geometry_msgs
	ros-melodic/nav_msgs
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
