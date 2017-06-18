# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="rosh is a Python-based scripting and runtime environment for ROS.  Through rosh "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OSUrobotics/rosh_core-release/archive/release/indigo/rosh/1.0.9-1.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/rosgraph
    ros-indigo/roshlaunch
    ros-indigo/rosmsg
    ros-indigo/rosnode
    ros-indigo/rosparam
    ros-indigo/rospy
    ros-indigo/rosservice
    ros-indigo/rostopic
    dev-python/ipython
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-indigo
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}