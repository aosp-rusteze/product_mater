# rusteze_mater_cf.mk
#
# Product definition for Rusteze Mater on Cuttlefish

# Inherit from the base Cuttlefish device
$(call inherit-product, device/google/cuttlefish/vsoc_x86_64/phone/aosp_cf.mk)

# Define product information
PRODUCT_NAME := rusteze_mater_cf
PRODUCT_DEVICE := mater_cf
PRODUCT_BRAND := Rusteze
PRODUCT_MODEL := Mater (Rust in cuttlefish)
PRODUCT_MANUFACTURER := Rusteze

PRODUCT_VENDOR_PROPERTIES += \
    ro.product.brand=$(PRODUCT_MANUFACTURER) \
    ro.product.manufacturer=$(PRODUCT_MANUFACTURER) \
    ro.product.model=$(PRODUCT_DEVICE)

# Include device-specific configurations
$(call inherit-product, $(LOCAL_PATH)/device.mk)
