# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="qt_gui provides the infrastructure for an integrated graphical user interfa[...]"
HOMEPAGE="http://ros.org/wiki/qt_gui"
SRC_URI="https://github.com/ros-gbp/${PN}_core-release/archive/release/kinetic/${PN}/0.3.17-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/python_qt_binding
	dev-python/rospkg
	dev-python/rospkg
	x11-themes/tango-icon-theme
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-python/PyQt5[gui,widgets]
	dev-python/PyQt5
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
