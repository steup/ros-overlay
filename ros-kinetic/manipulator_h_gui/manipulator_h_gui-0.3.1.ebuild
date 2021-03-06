# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The manipulator_h_gui package\
	This package provides simple GUI to cont[...]"
HOMEPAGE="http://wiki.ros.org/manipulator_h_gui"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/${PN}/0.3.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/eigen_conversions
	ros-kinetic/manipulator_h_base_module_msgs
	ros-kinetic/qt_build
	ros-kinetic/robotis_controller_msgs
	ros-kinetic/roscpp
	dev-cpp/eigen
	dev-qt/qtcore:4
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
