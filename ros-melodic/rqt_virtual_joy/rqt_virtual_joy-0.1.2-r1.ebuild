# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The rqt_virtual_joy package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/aquahika/${PN}stick-release/archive/release/melodic/${PN}/0.1.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rospy
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_py
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
