# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="A ROS nodelet and node that wraps the driver API for UEye cameras\
	by I[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/anqixu/${PN}-release/archive/release/noetic/${PN}/1.0.19-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/camera_calibration_parsers
	ros-noetic/camera_info_manager
	ros-noetic/dynamic_reconfigure
	ros-noetic/image_transport
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
