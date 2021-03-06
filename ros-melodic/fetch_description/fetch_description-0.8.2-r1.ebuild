# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="URDF for Fetch Robot."
HOMEPAGE="http://docs.fetchrobotics.com/robot_hardware.html"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/${PN}/0.8.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/urdf
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
