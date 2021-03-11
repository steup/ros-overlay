# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="qt_gui_app provides the main to start an instance of the integrated graphic[...]"
HOMEPAGE="http://ros.org/wiki/qt_gui_app"
SRC_URI="https://github.com/ros-gbp/qt_gui_core-release/archive/release/kinetic/${PN}/0.3.17-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/qt_gui
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
