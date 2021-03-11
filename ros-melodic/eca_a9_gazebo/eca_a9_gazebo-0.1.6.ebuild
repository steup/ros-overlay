# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Package with launch files for demonstrations with the ECA A9 AUV"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/eca_a9-release/archive/release/melodic/${PN}/0.1.6-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/eca_a9_control
	ros-melodic/eca_a9_description
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
