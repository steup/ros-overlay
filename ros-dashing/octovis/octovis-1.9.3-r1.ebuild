# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="octovis is visualization tool for the OctoMap library based on Qt and libQG[...]"
HOMEPAGE="http://octomap.github.io"
SRC_URI="https://github.com/ros-gbp/octomap-release/archive/release/dashing/${PN}/1.9.3-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/octomap
	x11-libs/libQGLViewer:0/qt4-2
	dev-qt/qtopengl:4
	dev-qt/qtgui:4
"
DEPEND="${RDEPEND}
	dev-util/cmake
	x11-libs/libQGLViewer:0/qt4-2
	dev-qt/qtcore:4
	dev-qt/qtopengl:4
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
