# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Visualization configuration for Clearpath Husky"
HOMEPAGE="http://ros.org/wiki/husky_viz"
SRC_URI="https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/${PN}/0.3.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/husky_description
	ros-kinetic/joint_state_publisher
	ros-kinetic/joint_state_publisher_gui
	ros-kinetic/robot_state_publisher
	ros-kinetic/rviz
	ros-kinetic/rviz_imu_plugin
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
