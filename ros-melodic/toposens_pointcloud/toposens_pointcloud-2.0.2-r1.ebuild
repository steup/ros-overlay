# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/${PN}/2.0.2-1 -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
	ros-melodic/toposens_description
	ros-melodic/toposens_driver
	ros-melodic/toposens_msgs
	ros-melodic/visualization_msgs
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
