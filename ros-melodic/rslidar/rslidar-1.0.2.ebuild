# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Basic ROS support for the Robosense 3D LIDARs."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/CPFL/robosense-release/archive/release/melodic/${PN}/1.0.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rslidar_driver
	ros-melodic/rslidar_msgs
	ros-melodic/rslidar_pointcloud
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
