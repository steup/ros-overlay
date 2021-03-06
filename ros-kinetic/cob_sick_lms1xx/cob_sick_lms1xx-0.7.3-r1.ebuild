# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="This package published a laser scan message out of a Sick LMS1xx laser scan[...]"
HOMEPAGE="http://ros.org/wiki/cob_sick_lms1xx"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/kinetic/${PN}/0.7.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
