# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="This package attempts to show the features of ROS python API step-by-step,\[...]"
HOMEPAGE="http://www.ros.org/wiki/rospy_tutorials"
SRC_URI="https://github.com/ros-gbp/ros_tutorials-release/archive/release/melodic/${PN}/0.9.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/rospy
	ros-melodic/std_msgs
	test? ( ros-melodic/roscpp_tutorials )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
