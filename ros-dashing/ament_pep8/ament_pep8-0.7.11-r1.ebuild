# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-python

DESCRIPTION="The ability to check code against the style conventions in PEP 8 and\
	g[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/${PN}/0.7.11-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-python/pep8
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
