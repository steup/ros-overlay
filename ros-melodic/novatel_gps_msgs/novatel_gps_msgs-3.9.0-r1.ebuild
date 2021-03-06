# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Messages for proprietary \(non-NMEA\) sentences from Novatel GPS receivers."
HOMEPAGE="https://ivs-git.dyn.datasys.swri.edu/uss/novatel_gps.git"
SRC_URI="https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/melodic/${PN}/3.9.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Southwest Research Institute Proprietary"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
