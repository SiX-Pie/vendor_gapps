# Copyright (C) 2017 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#inherit common gapps
$(call inherit-product, vendor/gapps/common-blobs.mk)

# /app
PRODUCT_PACKAGES += \
    CalendarGooglePrebuilt \
    CalculatorGooglePrebuilt \
    FaceLock \
    GoogleContactsSyncAdapter \
    GoogleTTS \
    GoogleVrCore \
    Hangouts \
    PrebuiltDeskClockGoogle \
    talkback \
    LatinIMEGooglePrebuilt \
    WallpapersBReel \
    NexusWallpapersStubPrebuilt \
    Turbo \
    WallpaperPickerGooglePrebuilt \
    WallpapersUsTwo \
    Chrome
#    Drive \
#    GMail \
#    YouTube \
#    GPlus

# messenger skip on tablets
#ifeq ($(filter dragon,$(TARGET_PRODUCT)),)
#PRODUCT_PACKAGES += \
#    PrebuiltBugle
#endif

# /framework
PRODUCT_PACKAGES += \
    com.google.android.camera.experimental2016 \
    com.google.android.maps \
    com.google.android.media.effects

# /priv-app
PRODUCT_PACKAGES += \
    AndroidPlatformServices \
    CarrierSetup \
    ConfigUpdater \
    ConnMetrics \
    GmsCoreSetupPrebuilt \
    GoogleBackupTransport \
    GoogleFeedback \
    GoogleOneTimeInitializer \
    GooglePartnerSetup \
    GoogleServicesFramework \
    GoogleExtShared \
    PrebuiltExchange3Google \
    GoogleCalendarSyncAdapter \
    GoogleExtServices \
    Phonesky \
    PrebuiltGmsCore \
    DynamiteLoader.apk \
    DynamiteModulesA \
    DynamiteModulesB \
    DynamiteModulesC \
    DynamiteModulesD \
    GoogleCertificates \
    SetupWizard \
    Velvet

# Libraries
PRODUCT_COPY_FILES += \
    vendor/gapps/lib64/libgdx.so:system/lib64/libgdx.so \
    vendor/gapps/lib64/libgeswallpapers-jni.so:system/lib64/libgeswallpapers-jni.so

# Symlinks
PRODUCT_PACKAGES += \
    libgdx.so \
    libgeswallpapers-jni.so \
    libjpeg.so

# /symlinks
PRODUCT_PACKAGES += \
    libfacenet.so

#telephony permissions
PRODUCT_PACKAGES += \
    com.google.android.dialer.support

PRODUCT_COPY_FILES += \
    vendor/gapps/etc/permissions/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml \
    vendor/gapps/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

# build.prop entrys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.theme_id=5 \
    ro.wallpapers_loc_request_suw=true
