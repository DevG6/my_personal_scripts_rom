#!/bin/bash

virtualenv2 venv
source venv/bin/activate
###############################################


## One Command For 2
virtualenv2 venv && source venv/bin/activate


# export PURE_BUILD_TYPE=Developers

export USE_CCACHE=1 && prebuilts/misc/linux-x86/ccache/ccache -M 100G

. build/envsetup.sh



    virtualenv2 venv && source venv/bin/activate && export USE_CCACHE=1 && prebuilts/misc/linux-x86/ccache/ccache -M 100G && . build/envsetup.sh





lunch aosp_h872-userdebug && mka installclean && mka aex -j8 && lunch aosp_h870-userdebug && mka installclean && mka aex -j8 && lunch aosp_us997-userdebug && mka installclean && mka aex -j8

lunch aosp_h872-userdebug && mka aex -j8 && lunch aosp_h870-userdebug && mka aex -j8 && lunch aosp_us997-userdebug && mka aex -j8

# lunch aosp_h872-userdebug && mka installclean && mka aex -j8 && lunch aosp_h870-userdebug && mka installclean && mka aex -j8 && lunch aosp_us997-userdebug && mka installclean && mka aex -j8
