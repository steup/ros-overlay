# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-cmake

DESCRIPTION="Provides a cmake config for the default version of Gazebo for the ROS distr[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/eloquent/${PN}/3.4.4-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	sci-electronics/gazebo
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
