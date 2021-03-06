# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="API and ROS drivers for Phidgets devices"
HOMEPAGE="http://ros.org/wiki/phidgets_drivers"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/2.0.2-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/libphidget22
	ros-eloquent/phidgets_accelerometer
	ros-eloquent/phidgets_analog_inputs
	ros-eloquent/phidgets_api
	ros-eloquent/phidgets_digital_inputs
	ros-eloquent/phidgets_digital_outputs
	ros-eloquent/phidgets_gyroscope
	ros-eloquent/phidgets_high_speed_encoder
	ros-eloquent/phidgets_ik
	ros-eloquent/phidgets_magnetometer
	ros-eloquent/phidgets_motors
	ros-eloquent/phidgets_msgs
	ros-eloquent/phidgets_spatial
	ros-eloquent/phidgets_temperature
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
