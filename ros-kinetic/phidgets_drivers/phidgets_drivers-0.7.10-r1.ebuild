# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="API and ROS drivers for Phidgets devices"
HOMEPAGE="http://ros.org/wiki/phidgets_drivers"
SRC_URI="https://github.com/ros-drivers-gbp/${PN}-release/archive/release/kinetic/${PN}/0.7.10-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/libphidget21
	ros-kinetic/phidgets_api
	ros-kinetic/phidgets_high_speed_encoder
	ros-kinetic/phidgets_ik
	ros-kinetic/phidgets_imu
	ros-kinetic/phidgets_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
