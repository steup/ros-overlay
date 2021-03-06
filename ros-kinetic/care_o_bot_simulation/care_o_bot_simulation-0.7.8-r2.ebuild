# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The care-o-bot-simulation meta-package"
HOMEPAGE="https://github.com/ipa320/care-o-bot"
SRC_URI="https://github.com/ipa320/care-o-bot-release/archive/release/kinetic/${PN}/0.7.8-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_bringup_sim
	ros-kinetic/cob_manipulation
	ros-kinetic/cob_navigation
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
