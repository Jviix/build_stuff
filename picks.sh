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
losrepopick 228566 # qcom: Label vendor files with (vendor|system/vendor) instead of vendor
losrepopick 228569 # Use set_prop() macro for property sets
losrepopick 228570 # sepolicy: Allow wcnss_service to set wlan.driver properties
losrepopick 228572 # sepolicy: Allow system_server to 'read' qti_debugfs
losrepopick 228573 # sepolicy: Add libsdm-disp-vndapis and libsdmutils to SP-HALs
losrepopick 228574 # sepolicy: Allow thermal-engine to read sysfs_uio[_file]
losrepopick 228575 # sepolicy: Add libcryptfs_hw to SP HALs
losrepopick 228576 # sepolicy: Label mpctl_socket as data_file_type
losrepopick 228578 # sepolicy: rules to allow camera daemon access to app buffer
losrepopick 228580 # hal_gnss_default: Do not log udp socket failures
losrepopick 228582 # sepolicy: qti_init_shell needs to read dir too
losrepopick 228583 # sepolicy: allow vold to read persist dirs
losrepopick 228584 # sepolicy: Fix video4linux "name" node labeling
losrepopick 228585 # sepolicy: Allow mm-qcamerad to access v4L "name" node
losrepopick 228586 # common: Fix labelling of lcd-backlight

# device/qcom/sepolicy-legacy
losrepopick 230828 # legacy: Label more power_supply sysfs
losrepopick 230829 # legacy: Resolve hal_gnss_default denial
losrepopick 230830 # legacy: Resolve hal_bluetooth_default denial
losrepopick 230834 # legacy: allow init to read /proc/device-tree
losrepopick 231054 # NFC: Add nfc data file context and rename property
losrepopick 230235 # common: grant DRM HIDL HAL ownership access to /data/{misc,vendor}/media/

# system/sepolicy
losrepopick 230151 # Fix storaged access to /sys/block/mmcblk0/stat after c936223c

# -------------- TOPIC STUFF --------------
