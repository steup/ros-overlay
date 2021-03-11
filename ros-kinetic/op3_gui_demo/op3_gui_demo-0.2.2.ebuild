# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The op3_gui_demo is a GUI software to control ROBOTIS-OP3. Within this prog[...]"
HOMEPAGE="http://wiki.ros.org/op3_gui_demo"
SRC_URI="https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/${PN}/0.2.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/eigen_conversions
	ros-kinetic/geometry_msgs
	ros-kinetic/humanoid_nav_msgs
	ros-kinetic/interactive_markers
	ros-kinetic/op3_navigation
	ros-kinetic/op3_online_walking_module_msgs
	ros-kinetic/op3_walking_module_msgs
	ros-kinetic/qt_build
	ros-kinetic/robotis_controller_msgs
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/visualization_msgs
	dev-libs/boost
	dev-cpp/eigen
	dev-qt/qtcore:4
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
