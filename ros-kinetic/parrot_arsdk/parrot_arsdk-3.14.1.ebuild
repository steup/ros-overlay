# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Catkin wrapper for the official ARSDK from Parrot"
HOMEPAGE="http://wiki.ros.org/parrot_arsdk"
SRC_URI="https://github.com/AutonomyLab/${PN}-release/archive/release/kinetic/${PN}/3.14.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	sys-devel/autoconf
	sys-devel/automake
	net-misc/curl
	virtual/ffmpeg
	net-dns/avahi
	net-dns/avahi
	sys-libs/ncurses
	sys-devel/libtool
	dev-lang/nasm
	app-arch/unzip
	dev-lang/yasm
	sys-libs/zlib
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
