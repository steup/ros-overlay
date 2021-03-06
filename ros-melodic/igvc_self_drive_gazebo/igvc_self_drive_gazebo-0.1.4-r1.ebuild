# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Gazebo models and runtime configuration for igvc_self_drive simulator"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/robustify/igvc_self_drive_sim-release/archive/release/melodic/${PN}/0.1.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/gazebo_ros
	ros-melodic/robot_state_publisher
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
