# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The melfa_driver package"
HOMEPAGE="http://wiki.ros.org/melfa_driver"
SRC_URI="https://github.com/tork-a/melfa_robot-release/archive/release/kinetic/${PN}/0.0.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/diagnostic_updater
	ros-kinetic/hardware_interface
	ros-kinetic/joint_state_controller
	ros-kinetic/joint_trajectory_controller
	ros-kinetic/position_controllers
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/roslint )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
