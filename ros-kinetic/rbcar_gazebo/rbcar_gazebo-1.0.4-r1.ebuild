# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The rbcar_gazebo package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RobotnikAutomation/rbcar_sim-release/archive/release/kinetic/rbcar_gazebo/1.0.4-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gazebo_ros
	ros-kinetic/rbcar_control
	ros-kinetic/rbcar_description
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

