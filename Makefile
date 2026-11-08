TARGET := iphone:clang:latest:14.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = DomainSniffer

DomainSniffer_FILES = Tweak.mm
DomainSniffer_CFLAGS = -fobjc-arc -Wno-deprecated-declarations
DomainSniffer_FRAMEWORKS = UIKit Foundation QuartzCore AVFoundation
DomainSniffer_LDFLAGS = -Wl,-not_for_dyld_shared_cache

include $(THEOS_MAKE_PATH)/library.mk
