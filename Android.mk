  LOCAL_PATH := $(call my-dir)
  include $(CLEAR_VARS)
   
  # Module name should match apk name to be installed.
  LOCAL_MODULE := firefox
  LOCAL_SRC_FILES := firefox.multi.android-arm.apk
  LOCAL_REQUIRED_MODULES := libmozglue.so \
			    libplugin-container.so
  LOCAL_MODULE_CLASS := APPS
  LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

  LOCAL_CERTIFICATE := PRESIGNED
   
  include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libmozglue.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH  := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := lib/armeabi-v7a/$(LOCAL_MODULE)

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libplugin-container.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH  := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := lib/armeabi-v7a/$(LOCAL_MODULE)

include $(BUILD_PREBUILT)

