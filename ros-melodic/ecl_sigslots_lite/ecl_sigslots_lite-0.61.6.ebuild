# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="This avoids use of dynamic storage \(malloc/new\) and thread safety \(mutex[...]"
HOMEPAGE="http://wiki.ros.org/ecl_sigslots_lite"
SRC_URI="https://github.com/yujinrobot-release/ecl_lite-release/archive/release/melodic/${PN}/0.61.6-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ecl_config
	ros-melodic/ecl_errors
	ros-melodic/ecl_license
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
