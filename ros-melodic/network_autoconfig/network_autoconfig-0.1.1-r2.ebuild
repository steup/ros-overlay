# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="ROS Networking Autoconfiguration"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/LucidOne-release/${PN}/archive/release/melodic/${PN}/0.1.1-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( MIT Apache-1.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	net-misc/networkmanager
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
