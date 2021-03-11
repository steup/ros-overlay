# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="URDF description, Gazebo simulation, navigation, bringup launch files, mess[...]"
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/kinetic/${PN}/1.0.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/mir_actions
	ros-kinetic/mir_description
	ros-kinetic/mir_driver
	ros-kinetic/mir_dwb_critics
	ros-kinetic/mir_gazebo
	ros-kinetic/mir_msgs
	ros-kinetic/mir_navigation
	ros-kinetic/sdc21x0
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
