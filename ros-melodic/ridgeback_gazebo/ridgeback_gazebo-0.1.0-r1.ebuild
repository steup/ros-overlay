# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Launchfiles to use Ridgeback in Gazebo."
HOMEPAGE="http://wiki.ros.org/ridgeback_gazebo"
SRC_URI="https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/melodic/${PN}/0.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gazebo_plugins
	ros-melodic/gazebo_ros
	ros-melodic/gazebo_ros_control
	ros-melodic/hector_gazebo_plugins
	ros-melodic/ridgeback_control
	ros-melodic/ridgeback_description
	ros-melodic/ridgeback_gazebo_plugins
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
