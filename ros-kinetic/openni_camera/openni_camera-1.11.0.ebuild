# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="A ROS driver for OpenNI depth \(+ RGB\) cameras. These include: \
	   Mi[...]"
HOMEPAGE="http://www.ros.org/wiki/openni_camera"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/1.11.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_info_manager
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/image_transport
	ros-kinetic/nodelet
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	dev-libs/OpenNi
	virtual/libusb:1
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
