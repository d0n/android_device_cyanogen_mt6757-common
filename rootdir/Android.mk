LOCAL_PATH := $(call my-dir)

define add-rootdir-targets
$(foreach target,$(1), \
   $(eval include $(CLEAR_VARS)) \
   $(eval LOCAL_MODULE       := $(target)) \
   $(eval LOCAL_MODULE_CLASS := ETC) \
   $(eval LOCAL_SRC_FILES    := $(target)) \
   $(eval LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)) \
   $(eval include $(BUILD_PREBUILT)))
endef

$(call add-rootdir-targets, \
    fstab.mt6757 \
    init.mt6757.rc \
    init.mt6757.modem.rc \
    init.mt6757.usb.rc \
    meta_init.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    factory_init.rc \
    factory_init.usb.rc \
    factory_init.project.rc \
    ueventd.mt6757.rc)
