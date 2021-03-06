# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Package for all inverse kinematics solvers in MoveIt!"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/${PN}/0.9.18-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/moveit_core
	ros-kinetic/moveit_ros_planning
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/srdfdom
	ros-kinetic/tf
	ros-kinetic/tf_conversions
	ros-kinetic/urdf
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
