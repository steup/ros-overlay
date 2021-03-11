# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="rqt GUI for rosmon, the node launcher and monitor for ROS.\
\	\	rosmon is a[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xqms/rosmon-release/archive/release/kinetic/${PN}/2.2.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/rosmon_msgs
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
