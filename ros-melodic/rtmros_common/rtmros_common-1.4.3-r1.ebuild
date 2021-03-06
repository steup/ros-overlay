# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="A package suite that provides all the capabilities for\
	the ROS users t[...]"
HOMEPAGE="http://wiki.ros.org/rtmros_common"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/1.4.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/hrpsys_ros_bridge
	ros-melodic/hrpsys_tools
	ros-melodic/openrtm_ros_bridge
	ros-melodic/openrtm_tools
	ros-melodic/rosnode_rtc
	ros-melodic/rtmbuild
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
