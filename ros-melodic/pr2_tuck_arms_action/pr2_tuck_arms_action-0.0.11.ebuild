# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The pr2_tuck_arms_action package"
HOMEPAGE="http://wiki.ros.org/pr2_tuck_arms_action"
SRC_URI="https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/melodic/${PN}/0.0.11-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/pr2_common_action_msgs
	ros-melodic/pr2_controllers_msgs
	ros-melodic/rospy
	ros-melodic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
