# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Move the pr2 arm using inverse kinematics"
HOMEPAGE="http://ros.org/wiki/pr2_arm_move_ik"
SRC_URI="https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/kinetic/${PN}/0.0.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/pr2_common_action_msgs
	ros-kinetic/pr2_controllers_msgs
	ros-kinetic/roscpp
	ros-kinetic/tf
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
