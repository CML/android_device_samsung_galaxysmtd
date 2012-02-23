## Specify phone tech before including full_phone
$(call inherit-product, vendor/osr/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GalaxyS

$(call inherit-product, vendor/osr/config/asian.mk)

$(call inherit-product, vendor/osr/config/common_full_phone.mk)

$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

#test in ICS-RC
PRODUCT_PACKAGES += \
    ROMControl

# GalaxyS overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/osr/overlay/galaxysmtd

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := galaxysmtd
PRODUCT_NAME := team_galaxysmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9000

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_ID=GINGERBREAD BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 2.3.5 GINGERBREAD XXJVT release-keys"

# Inherit drm blobs
#-include vendor/osr/config/common_drm.mk

# Inherit Facelock blobs
#-include vendor/osr/config/common_facelock.mk

# Inherit Gapps blobs
#-include vendor/osr/config/common_gapps.mk
