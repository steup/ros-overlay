# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-python

DESCRIPTION="rqt_topic provides a GUI plugin for displaying debug information about ROS [...]"
HOMEPAGE="http://wiki.ros.org/rqt_topic"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/1.0.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/python_qt_binding
	ros-crystal/rqt_gui
	ros-crystal/rqt_gui_py
	ros-crystal/rqt_py_common
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
