# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="This package wraps the external c++ library dlib \(http://dlib.net/\) in a [...]"
HOMEPAGE="http://dlib.net/"
SRC_URI="https://github.com/ipa320/cob_extern-release/archive/release/melodic/${PN}/0.6.17-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Boost-1.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
