# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The phidget interface kit driver package for leuze lasers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa-led/leuze_ros_drivers-release/archive/release/melodic/${PN}/1.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/leuze_msgs
	ros-melodic/roscpp
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
