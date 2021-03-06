# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Gazebo plugin to provide simulated data from Velodyne laser scanners."
HOMEPAGE="http://wiki.ros.org/velodyne_gazebo_plugins"
SRC_URI="https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/melodic/${PN}/1.0.9-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gazebo_ros
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
