#!/bin/bash

cd bionic

git fetch https://github.com/LineageOS/android_bionic refs/changes/99/230099/3 && git cherry-pick FETCH_HEAD

git fetch https://github.com/LineageOS/android_bionic refs/changes/62/230762/1 && git cherry-pick FETCH_HEAD

cd && cd POS/build/kati

git fetch https://github.com/LineageOS/android_build_kati refs/changes/13/225213/1 && git cherry-pick FETCH_HEAD

cd && cd POS/build/soong

git fetch https://github.com/LineageOS/android_build_soong refs/changes/13/224613/4 && git cherry-pick FETCH_HEAD

git fetch https://github.com/LineageOS/android_build_soong refs/changes/11/229411/1 && git cherry-pick FETCH_HEAD

cd && cd POS/dalvik

git fetch https://github.com/LineageOS/android_dalvik refs/changes/76/225476/1 && git cherry-pick FETCH_HEAD

#cd && cd POS/hardware/qcom/audio

#git fetch https://github.com/LineageOS/android_hardware_qcom_audio refs/changes/49/230749/1 && git cherry-pick FETCH_HEAD

#cd && cd POS/hardware/qcom/media

#git fetch https://github.com/LineageOS/android_hardware_qcom_media refs/changes/50/230750/2 && git cherry-pick FETCH_HEAD

cd && cd POS/system/netd

git fetch https://github.com/LineageOS/android_system_netd refs/changes/01/231201/3 && git cherry-pick FETCH_HEAD

cd && cd POS/system/sepolicy

git fetch https://github.com/LineageOS/android_system_sepolicy refs/changes/48/223748/6 && git cherry-pick FETCH_HEAD

cd && cd POS
