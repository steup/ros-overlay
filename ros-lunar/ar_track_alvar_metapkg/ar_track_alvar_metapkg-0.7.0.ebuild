# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Meta package for ROS ar_track_alvar related packages."
HOMEPAGE="http://ros.org/wiki/ar_track_alvar"
SRC_URI="https://github.com/ros-gbp/ar_track_alvar-release/archive/release/lunar/ar_track_alvar_metapkg/0.7.0-0.tar.gz"

LICENSE="LGPL-2.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/ar_track_alvar_msgs
    ros-lunar/ar_track_alvar
"
DEPEND="
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}