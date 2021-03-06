# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Basic test nodes for Pyros dynamic ROS interface"
HOMEPAGE="https://github.com/asmodehn/pyros-test"
SRC_URI="https://github.com/pyros-dev/pyros-test-release/archive/release/melodic/${PN}/0.0.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/rospy
	ros-melodic/std_msgs
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rostopic )
	test? ( ros-melodic/rosunit )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
