LOCAL_PATH := $(call my-dir)

##Build libinih
include $(CLEAR_VARS)
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_CFLAGS := 
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libinih
LOCAL_SRC_FILES :=		\
	ini.c	
include $(BUILD_SHARED_LIBRARY) 

##Build libinih-cpp
include $(CLEAR_VARS)
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_CFLAGS := 
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libinih-cpp
LOCAL_SRC_FILES :=	ini.c \
	cpp/INIReader.cpp
include $(BUILD_SHARED_LIBRARY) 

##Make libinih_headers
include $(CLEAR_VARS)
LOCAL_MODULE := libinih_headers
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)
include $(BUILD_HEADER_LIBRARY)

##Make libinih-cpp_headers
include $(CLEAR_VARS)
LOCAL_MODULE := libinih-cpp_headers
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/cpp
include $(BUILD_HEADER_LIBRARY)
