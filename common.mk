ifeq ($(FOD_RESOURCES),true)
PRODUCT_PACKAGES += \
    UdfpsResources
endif

# Source fonts
$(call inherit-product-if-exists, external/google-fonts/arbutus-slab/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/arvo/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/source-sans-pro/fonts.mk)

FONT_PATH := vendor/themes/fonts
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(FONT_PATH),$(TARGET_COPY_OUT_PRODUCT)/fonts)

PRODUCT_COPY_FILES += \
    vendor/themes/FontOverlays/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

# Overlays
include vendor/themes/overlays.mk