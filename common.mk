ifeq ($(FOD_ANIMATIONS),true)
PRODUCT_PACKAGES += \
    FodAnimationResources
endif

ifeq ($(HAS_FOD),true)
DEVICE_PACKAGE_OVERLAYS += vendor/themes/fod-overlays/fod-icons
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/themes/fod-overlays/fod-icons
endif

# Overlays
include vendor/themes/overlays.mk