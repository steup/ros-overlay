# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Provides an extensible and standardised framework for input-output devices."
HOMEPAGE="http://wiki.ros.org/ecl_devices"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/${PN}/0.62.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ecl_config
	ros-melodic/ecl_containers
	ros-melodic/ecl_errors
	ros-melodic/ecl_license
	ros-melodic/ecl_mpl
	ros-melodic/ecl_threads
	ros-melodic/ecl_type_traits
	ros-melodic/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
