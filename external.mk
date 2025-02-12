# Include custom packages
include $(sort $(wildcard $(BR2_EXTERNAL_INITRAMFS_PATH)/package/*/*.mk))
