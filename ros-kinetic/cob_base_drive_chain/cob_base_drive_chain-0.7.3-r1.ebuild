# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="This package contains classes that are able to control the platform of the [...]"
HOMEPAGE="http://ros.org/wiki/cob_base_drive_chain"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/kinetic/${PN}/0.7.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_canopen_motor
	ros-kinetic/cob_generic_can
	ros-kinetic/cob_utilities
	ros-kinetic/control_msgs
	ros-kinetic/diagnostic_msgs
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
