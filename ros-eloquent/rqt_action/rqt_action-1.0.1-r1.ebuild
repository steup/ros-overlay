# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-python

DESCRIPTION="rqt_action provides a feature to introspect all available ROS\
  action typ[...]"
HOMEPAGE="http://wiki.ros.org/rqt_action"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/1.0.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/python_qt_binding
	ros-eloquent/rclpy
	ros-eloquent/rqt_gui
	ros-eloquent/rqt_gui_py
	ros-eloquent/rqt_msg
	ros-eloquent/rqt_py_common
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
