$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)


# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk


# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)


# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)


# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/micromax/E7446/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*


PRODUCT_DEVICE := E7446
PRODUCT_NAME := omni_E7446
PRODUCT_BRAND := micromax
PRODUCT_MODEL := E7446
PRODUCT_MANUFACTURER := micromax
