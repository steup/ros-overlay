# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Simple scripts which help utilise, monitor, interact with computer	 hardware"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/linux_peripheral_interfaces-release/archive/release/kinetic/linux_peripheral_interfaces/0.2.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/laptop_battery_monitor
	ros-kinetic/libsensors_monitor
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

