# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="ROS package of IRIS Localization and Mapping \(LaMa\)."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/eupedrosa/${PN}-release/archive/release/melodic/${PN}/1.0.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/iris_lama
	ros-melodic/message_filters
	ros-melodic/nav_msgs
	ros-melodic/rosbag
	ros-melodic/rosbag_storage
	ros-melodic/roscpp
	ros-melodic/tf
	ros-melodic/tf_conversions
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
