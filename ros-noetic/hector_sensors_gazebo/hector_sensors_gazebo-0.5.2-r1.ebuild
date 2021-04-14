# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="hector_sensors_gazebo depends on the necessary plugins for using the sensor[...]"
HOMEPAGE="http://ros.org/wiki/hector_sensors_gazebo"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/noetic/${PN}/0.5.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/gazebo_plugins
	ros-noetic/hector_gazebo_plugins
	ros-noetic/hector_sensors_description
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"