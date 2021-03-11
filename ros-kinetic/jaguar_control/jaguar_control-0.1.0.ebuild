# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="DrRobots Jaguar 4X4 controller configurations"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gstavrinos/jaguar-release/archive/release/kinetic/jaguar_control/0.1.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/diff_drive_controller
	ros-kinetic/joint_state_controller
	ros-kinetic/joint_trajectory_controller
	ros-kinetic/joy
	ros-kinetic/robot_localization
	ros-kinetic/rostopic
	ros-kinetic/teleop_twist_joy
	ros-kinetic/twist_mux
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

