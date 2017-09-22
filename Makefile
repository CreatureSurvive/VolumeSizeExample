include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VolumeSizeExample
VolumeSizeExample_FILES = Tweak.xm
VolumeSizeExample_FRAMEWORKS = UIKit CoreGraphics
VolumeSizeExample_PRIVATE_FRAMEWORKS = MediaPlayerUI

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
