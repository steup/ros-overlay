# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="This package wraps the external c++ library opengm in a ROS package, so oth[...]"
HOMEPAGE="http://hciweb2.iwr.uni-heidelberg.de/opengm/"
SRC_URI="https://github.com/ipa320/cob_extern-release/archive/release/kinetic/${PN}/0.6.17-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
