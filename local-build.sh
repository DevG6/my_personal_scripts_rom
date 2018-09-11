#!/bin/bash

virtualenv2 venv
wait
source venv/bin/activate
wait

export PURE_BUILD_TYPE=Developers
export USE_CCACHE=1
prebuilts/misc/linux-x86/ccache/ccache -M 100G

. build/envsetup.sh
brunch h872-userdebug -j8
