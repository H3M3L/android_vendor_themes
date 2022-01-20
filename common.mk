# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/themes/overlay/common
DEVICE_PACKAGE_OVERLAYS += vendor/themes/overlay/common

ifeq ($(FOD_ANIMATIONS),true)
PRODUCT_PACKAGES += \
    FodAnimationResources
endif

ifeq ($(HAS_FOD),true)
DEVICE_PACKAGE_OVERLAYS += vendor/themes/overlay/fod-icons
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/themes/overlay/fod-icons
endif

# Overlays
include vendor/themes/overlays.mk