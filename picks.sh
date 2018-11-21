#!/bin/bash

source build/envsetup.sh

# -------------- PLATFORM STUFF --------------

# build/make
losrepopick 222760 # Add LOCAL_AIDL_FLAGS
losrepopick 222742 # build: Use project pathmap for recovery

# build/soong
losrepopick 224613 # soong: Add LOCAL_AIDL_FLAGS handling

# dalvik
losrepopick 225476 # dexdeps: Ignore static initializers on analysis.

# device/qcom/sepolicy
repopick 1250 # qcom: Label vendor files with (vendor|system/vendor) instead of vendor
repopick 1251 # Use set_prop() macro for property sets
repopick 1252 # sepolicy: Allow wcnss_service to set wlan.driver properties
repopick 1253 # sepolicy: Allow system_server to 'read' qti_debugfs
repopick 1254 # sepolicy: Add libsdm-disp-vndapis and libsdmutils to SP-HALs
repopick 1255 # sepolicy: Allow thermal-engine to read sysfs_uio[_file]
repopick 1256 # sepolicy: Add libcryptfs_hw to SP HALs
repopick 1257 # sepolicy: Label mpctl_socket as data_file_type
repopick 1258 # sepolicy: rules to allow camera daemon access to app buffer
repopick 1259 # hal_gnss_default: Do not log udp socket failures
repopick 1260 # sepolicy: qti_init_shell needs to read dir too
repopick 1261 # sepolicy: allow vold to read persist dirs
repopick 1262 # sepolicy: Fix video4linux "name" node labeling
repopick 1263 # sepolicy: Allow mm-qcamerad to access v4L "name" node
repopick 1264 # common: Fix labelling of lcd-backlight

# device/qcom/sepolicy-legacy
repopick 1266 # sepolicy : set write permissions for sysfs_boot_adsp.
repopick 1267 # legacy: Label more power_supply sysfs
repopick 1268 # legacy: Resolve hal_gnss_default denial
repopick 1269 # legacy: Resolve hal_bluetooth_default denial
repopick 1270 # legacy: allow init to read /proc/device-tree
repopick 1271 # NFC: Add nfc data file context and rename property
repopick 1272 # common: grant DRM HIDL HAL ownership access to /data/{misc,vendor}/media/

# device/custom/sepolicy
repopick 1273 # common: Expand labeling of sysfs_vibrator nodes using regex
repopick 1265 # common: Label and allow init to write to I/O sched tuning nodes

# system/netd
repopick 1285 # netd: Allow devices to opt-out of the tethering active FTP helper

# system/sepolicy
repopick 1283 # sepolicy: Grant mediaextractor access to files over all sdcard fs types
repopick 1284 # Fix storaged access to /sys/block/mmcblk0/stat after c936223c

# -------------- TOPIC STUFF --------------
