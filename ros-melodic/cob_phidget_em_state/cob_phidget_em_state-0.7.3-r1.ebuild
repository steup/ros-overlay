# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The cob_phidget_em_state package publishes emergency state based on phidget[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/melodic/${PN}/0.7.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_msgs
	ros-melodic/cob_phidgets
	ros-melodic/rospy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
