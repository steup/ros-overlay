# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="This is SDHLibrary-CPP, the C++ library to access\
  an SDH \(SCHUNK Dexter[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipab-slmc/SDHLibrary-CPP-release/archive/release/kinetic/${PN}/0.2.10-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
