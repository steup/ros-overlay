# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="rqt_common_plugins metapackage provides ROS backend graphical tools suite t[...]"
HOMEPAGE="http://ros.org/wiki/rqt_common_plugins"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.4.8-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rqt_action
	ros-kinetic/rqt_bag
	ros-kinetic/rqt_bag_plugins
	ros-kinetic/rqt_console
	ros-kinetic/rqt_dep
	ros-kinetic/rqt_graph
	ros-kinetic/rqt_image_view
	ros-kinetic/rqt_launch
	ros-kinetic/rqt_logger_level
	ros-kinetic/rqt_msg
	ros-kinetic/rqt_plot
	ros-kinetic/rqt_publisher
	ros-kinetic/rqt_py_common
	ros-kinetic/rqt_py_console
	ros-kinetic/rqt_reconfigure
	ros-kinetic/rqt_service_caller
	ros-kinetic/rqt_shell
	ros-kinetic/rqt_srv
	ros-kinetic/rqt_top
	ros-kinetic/rqt_topic
	ros-kinetic/rqt_web
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
