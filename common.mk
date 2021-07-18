# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/themes/overlay/common
DEVICE_PACKAGE_OVERLAYS += vendor/themes/overlay/common

ifeq ($(FOD_ANIMATIONS),true)
PRODUCT_PACKAGES += \
    FodAnimationResources
endif

ifeq ($(HAS_FOD),true)
DEVICE_PACKAGE_OVERLAYS += vendor/themes/overlay/fod-icons
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/addons/overlay/fod-icons
endif

# Overlays
include vendor/themes/overlays.mk

# Prebuilts app
include vendor/themes/prebuilts.mk

# Gboard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.theme_id=5 \
    ro.com.google.ime.kb_pad_port_b=1

# Sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=The_big_adventure.ogg \
    ro.config.notification_sound=Popcorn.ogg \
    ro.config.alarm_alert=Bright_morning.ogg
