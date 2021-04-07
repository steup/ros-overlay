# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="ROS wrapper for slime"
HOMEPAGE="http://common-lisp.net/project/slime"
SRC_URI="https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/${PN}/0.4.15-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="public_domain"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/emacs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
