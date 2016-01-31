ARCHS = armv7 arm64

include theos/makefiles/common.mk

APPLICATION_NAME = Device
Device_FILES = main.m DeviceApplication.mm RootViewController.mm
Device_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk
