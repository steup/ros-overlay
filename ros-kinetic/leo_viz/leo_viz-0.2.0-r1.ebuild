# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Visualization launch files and RViz configurations for Leo Rover"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fictionlab-gbp/${PN}-release/archive/release/kinetic/${PN}/0.2.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/joint_state_publisher
	ros-kinetic/joint_state_publisher_gui
	ros-kinetic/leo_description
	ros-kinetic/robot_state_publisher
	ros-kinetic/rviz
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
