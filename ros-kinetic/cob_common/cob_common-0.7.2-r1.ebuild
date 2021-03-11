# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The cob_common stack hosts common packages that are used within the Care-O-[...]"
HOMEPAGE="http://ros.org/wiki/cob_common"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/kinetic/${PN}/0.7.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_actions
	ros-kinetic/cob_description
	ros-kinetic/cob_msgs
	ros-kinetic/cob_srvs
	ros-kinetic/raw_description
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
