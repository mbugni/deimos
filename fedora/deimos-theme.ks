# deimos-theme.ks
#
# Provides the DeimOS theme.


%post

echo ""
echo "POST DEIMOS THEME ************************************"
echo ""

# Build default theme
mkdir -p /usr/share/icewm/themes/DeimOS-Dark/icons
mkdir -p /usr/share/icewm/themes/DeimOS-Dark/taskbar

echo "Create window buttons"

base64 --decode << EOF | zcat > /usr/share/icewm/themes/DeimOS-Dark/closeA.xpm
H4sICPJxOGMAA2Nsb3NlQS54cG0A7dCxCsIwEAbg2TzFUbdWrq1tpCAOgroJjoKIlFBQUBTbQRDf
XdIpyZUepWv+KceXXC6JQzge9hDGom7K5qZAXcs3hKDuz7paXz6vx+kMK/iKYF7AIoEM0mAmApgo
mBZJnstMl6jLXRtdRrrcblKZynZzT7ybjmThnEeHSX+0md6PFnfMhyYPd6Y/Mx/zPvZ/SLyP96gn
3k1HsnDOo8OkP9pM70eLO+ZDk4c705+Zj3kf+z8k3kf6byn+Z29qGeQHAAA=
EOF
ln -s --relative /usr/share/icewm/themes/DeimOS-Dark/closeA.xpm /usr/share/icewm/themes/DeimOS-Dark/closeO.xpm

base64 --decode << EOF | zcat > /usr/share/icewm/themes/DeimOS-Dark/closeI.xpm
H4sICBByOGMAA2Nsb3NlSS54cG0A7ZO9CsIwFIVn8xSXZmslbYwpBRFUVHAQHAURKUFQUBTbQRDf
XZKpyS0NpaM9WXL4yLk/kDiE/W4LYUyKMi+vCtQlf0EI6vYozpvT+3k/HGEKHxKMMkgTkMCDIQlg
oIAKLlKx0JZpu5rro22kbZaMx1JoOzN0ySWX2lJt10YmqkE9r3KGLs575mCUz2yM6zML1/THqrg9
9+R7+vPM590PUs+786hB5vc36L84RRfnPXUwyqc2xvWphWv6o1XcnnvyPf155vPuB6nnHfl3Qn6B
SrspAggAAA==
EOF

base64 --decode << EOF | zcat > /usr/share/icewm/themes/DeimOS-Dark/maximizeA.xpm
H4sICGhxM2MAA21heGltaXplQS54cG0A09dSiAjwVdDS5youSSzJTFZIzkgsUtBSyE2syMzNrEp1
jK8oyI2OVbBVqOZSMrJQMDNQMFYwVNLhUlLgTFZQtjAwMTE1BnH1QFw3MABxtVFlFfCAUXlkeT04
wCGPwRhh8gTCBxOMylMur40HjMojyyPSJw55DMYIkycQPphgVJ5C+VprLgDjxCbN5wcAAA==
EOF
ln -s --relative /usr/share/icewm/themes/DeimOS-Dark/maximizeA.xpm /usr/share/icewm/themes/DeimOS-Dark/maximizeO.xpm

base64 --decode << EOF | zcat > /usr/share/icewm/themes/DeimOS-Dark/maximizeI.xpm
H4sICF9wM2MAA21heGltaXplSS54cG0A09dSiAjwVdDS5youSSzJTFZIzkgsUtBSyE2syMzNrEr1
jK8oyI2OVbBVqOZSMrJQMDNQMFYwVNLhUlLgTFZQNjY0NjN2AnH1QFw3MABxtcGypiAIVowHjMoj
y+vBAQ55DMYIkycQPphgVJ5yeW08YFQeWR6RPnHIYzBGmDyB8MEEo/IUytdacwEAmPFoWucHAAA=
EOF

base64 --decode << EOF | zcat > /usr/share/icewm/themes/DeimOS-Dark/minimizeA.xpm
H4sICHhxM2MAA21pbmltaXplQS54cG0A09dSiAjwVdDS5youSSzJTFZIzkgsUtBSyM3My8zNrEp1
jK8oyI2OVbBVqOZSMrJQMDNQMFYwVNLhUlLgTFZQtjAwMTE1BnH1QFw3MABxtVFlFfCAUfnhJK8H
B4PTfaPy5Mhr4wGj8sNJHpF/B6f7RuVJlq+15gIAA5B1RecHAAA=
EOF
ln -s --relative /usr/share/icewm/themes/DeimOS-Dark/minimizeA.xpm /usr/share/icewm/themes/DeimOS-Dark/minimizeO.xpm

base64 --decode << EOF | zcat > /usr/share/icewm/themes/DeimOS-Dark/minimizeI.xpm
H4sICF9wM2MAA21pbmltaXplSS54cG0A09dSiAjwVdDS5youSSzJTFZIzkgsUtBSyM3My8zNrEr1
jK8oyI2OVbBVqOZSMrJQMDNQMFYwVNLhUlLgTFZQNjY0NjN2AnH1QFw3MABxtcGypiAIVowHjMoP
J3k9OBic7huVJ0deGw8YlR9O8oj8OzjdNypPsnytNRcAeKU70ucHAAA=
EOF

base64 --decode << EOF | zcat > /usr/share/icewm/themes/DeimOS-Dark/restoreA.xpm
H4sICHFxM2MAA3Jlc3RvcmVBLnhwbQDT11KICPBV0NLnKi5JLMlMVkjOSCxS0FIoSi0uyS9KdYyv
KMiNjlWwVajmUjKyUDAzUDBWMFTS4VJS4ExWULYwMDExNQZx9UBcNzAAcbVRZRXwgFF5VHk9KMAp
j0Khy8N145KHUQMsj8t/6L7D6T8c8phgVJ728tp4wEiTh6VQnPIoFLo8XDcueRg1wPK4/IfuO5z+
wyGPCUblKZSvteYCAJ2rQQrmBwAA
EOF
ln -s --relative /usr/share/icewm/themes/DeimOS-Dark/restoreA.xpm /usr/share/icewm/themes/DeimOS-Dark/restoreO.xpm

base64 --decode << EOF | zcat > /usr/share/icewm/themes/DeimOS-Dark/restoreI.xpm
H4sICF9wM2MAA3Jlc3RvcmVJLnhwbQDT11KICPBV0NLnKi5JLMlMVkjOSCxS0FIoSi0uyS9K9Yyv
KMiNjlWwVajmUjKyUDAzUDBWMFTS4VJS4ExWUDY2NDYzdgJx9UBcNzAAcbXBsqYgCFaMB4zKo8rr
QQFOeRQKXR6uG5c8jBpgeVz+Q/cdTv/hkMcEo/K0l9fGA0aaPCyF4pRHodDl4bpxycOoAZbH5T90
3+H0Hw55TDAqT6F8rTUXAOaeD53mBwAA
EOF

echo "Create theme images"

base64 --decode << EOF | zcat > /usr/share/icewm/themes/DeimOS-Dark/menuButtonA.xpm
H4sICF9wM2MAA21lbnVCdXR0b25BLnhwbQDtyr0KwjAAReG5eYpL3EKhRiMIxUF3wVGQIiUIdegP
moIgfXelT+DocO6ZLnyF0/l0lCvMM9XpHhWb+iGn9taNhzGlvttfX0N7qbTT29iwkvde32xurLKo
xXYZwmY935+HRqPRaDQajUaj0Wg0Go1Go/9cT6X5AFGWsUs+FAAA
EOF

base64 --decode << EOF | zcat > /usr/share/icewm/themes/DeimOS-Dark/menuButtonI.xpm
H4sICKZwM2MAA21lbnVCdXR0b25JLnhwbQDtyr0KwjAAReG5eYpL3EKhxIiLdLB7wVEQkRIEO/SH
moJQfHelT+DocO6ZLnyF0/lUyxXmmZrURsVHM8mpu/dzNac09Mfba+wuV5VajN1t5b3XN5sbqyxq
E3zYh2q9Pw+NRqPRaDQajUaj0Wg0Go1G/7l+H8wHIZmNSj4UAAA=
EOF

base64 --decode > /usr/share/icewm/themes/DeimOS-Dark/gradient.png << EOF
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
YII=
EOF

echo "Create theme config"

cat > /usr/share/icewm/themes/DeimOS-Dark/default.theme << EOF
ThemeDescription="Deimos Theme"

ThemeAuthor="Doom"

Look=pixmap
TitleBarHeight=26
TitleBarJustify=50

#Fonts
TitleFontNameXft=                       "sans-serif:size=10:bold"
StatusFontNameXft=                      "sans-serif:size=11:bold"
MenuFontNameXft=                        "sans-serif:size=11:bold"
NormalTaskBarFontNameXft=               "sans-serif:size=11:bold"
ActiveTaskBarFontNameXft=               "sans-serif:size=11:bold"
ListBoxFontNameXft=                     "sans-serif:size=11:bold"
ToolTipFontNameXft=                     "sans-serif:size=9:bold"
QuickSwitchFontNameXft=                 "sans-serif:size=10:bold"
ClockFontNameXft=                       "sans-serif:size=11:bold"

#Windows
TitleBarVertOffset=                     -2
TitleButtonsSupported=                  "xmirs"
TitleButtonsLeft=                       "s"
TitleButtonsRight=                      "xmi"
RolloverButtonsSupported=               1
TaskBarClockLeds=                       1
TrayDrawBevel=                          1

#WindowsBorder
BorderSizeX=        3
BorderSizeY=        3
CornerSizeX=        15
CornerSizeY=        15
DlgBorderSizeX=     2
DlgBorderSizeY=     2

#TitleBox
ColorNormalBorder=          "rgb:31/36/3B"
ColorActiveBorder=          "rgb:80/44/53"
ColorActiveTitleBar=        "rgb:80/44/53"
ColorNormalTitleBar=        "rgb:31/36/3B"
ColorNormalButton=          "rgb:80/44/53"
ColorNormalTitleBarText=    "rgb:DC/DC/DC"
ColorActiveTitleBarText=    "rgb:DC/DC/DC"

#DialogBox
ColorDialogSelectionText=               "rgb:FC/FC/FC"

#Menu
ColorActiveMenu=                        "rgb:31/36/3B"
ColorActiveMenuItem=                    "rgb:80/44/53"
ColorActiveMenuItemText=                "rgb:FC/FC/FC"
ColorNormalMenu=                        "rgb:31/36/3B"
ColorNormalMenuItem=                    "rgb:31/36/3B"
ColorNormalMenuItemText=                "rgb:DC/DC/DC"
ColorDisabledMenuItemText=              "rgb:80/80/80"
ColorDisabledMenuItemShadow=            "rgb:00/00/00"

#MenuIcons
MenuIconSize=                           24
SmallIconSize=                          24
LargeIconSize=                          32
HugeIconSize=                           48

#Taskbar
ColorDefaultTaskBar=                    "rgb:31/36/3B"
ColorToolButton=                        "rgb:31/36/3B"
ColorActiveButton=                      "rgb:80/44/53"
ColorNormalButton=                      "rgb:31/36/3B"
ColorToolButtonText=                    "rgb:DC/DC/DC"
ColorNormalWorkspaceButtonText=         "rgb:DC/DC/DC"
ColorActiveWorkspaceButtonText=         "rgb:FC/FC/FC"
ColorNormalButtonText=                  "rgb:DC/DC/DC"
ColorActiveButtonText=                  "rgb:DA/44/53"
ColorActiveTaskBarApp=                  "rgb:80/44/53"
ColorActiveTaskBarAppText=              "rgb:FC/FC/FC"
ColorKeyboardLayoutText=                "rgb:DC/DC/DC"
ColorMinimizedTaskBarApp=               "rgb:2D/2D/2D"
ColorMinimizedTaskBarAppText=           "rgb:DC/DC/DC"
ColorNormalTaskBarApp=                  "rgb:2D/2D/2D"
ColorNormalTaskBarAppText=              "rgb:DC/DC/DC"
ColorInvisibleTaskBarAppText=           "rgb:DC/DC/DC"

#Tooltip
ColorToolTip=                           "rgb:2D/2D/2D"
ColorToolTipText=                       "rgb:FC/FC/FC"

#QuickSwitch
ColorQuickSwitch=                       "rgb:2D/2D/2D"
ColorQuickSwitchText=                   "rgb:FC/FC/FC"
ColorQuickSwitchActive=                 "rgb:80/44/53"

ColorListBox=               "rgb:2D/2D/2D"
ColorListBoxText=           "rgb:FC/FC/FC"
ColorListBoxSelection=      "rgb:80/44/53"
ColorListBoxSelectionText=  "rgb:FC/FC/FC"
ColorScrollBar=             "rgb:C0/C0/C0"
ColorScrollBarSlider=       "rgb:C0/C0/C0"
ColorScrollBarButtonArrow=  "rgb:C0/C0/C0"

DesktopBackgroundScaled=1
DesktopBackgroundImage="gradient.png"
EOF

# Create links to replace generic icons
ln -s /usr/share/icons/oxygen/base/32x32/places/folder-red.png /usr/share/icewm/themes/DeimOS-Dark/icons/folder.png
ln -s /usr/share/icons/oxygen/base/32x32/devices/video-display.png /usr/share/icewm/themes/DeimOS-Dark/icons/display.png
ln -s /usr/share/icons/oxygen/base/32x32/actions/window-duplicate.png /usr/share/icewm/themes/DeimOS-Dark/icons/windows.png
ln -s /usr/share/icons/oxygen/base/32x32/actions/system-log-out.png /usr/share/icewm/themes/DeimOS-Dark/icons/logout.png
ln -s /usr/share/icons/oxygen/base/32x32/actions/system-reboot.png /usr/share/icewm/themes/DeimOS-Dark/icons/reboot.png
ln -s /usr/share/icons/oxygen/base/32x32/actions/system-shutdown.png /usr/share/icewm/themes/DeimOS-Dark/icons/shutdown.png
ln -s /usr/share/icons/oxygen/base/32x32/actions/system-suspend-hibernate.png /usr/share/icewm/themes/DeimOS-Dark/icons/suspend.png

# Create links to replace taskbar icons
ln -s /usr/share/icons/oxygen/base/22x22/actions/run-build.png /usr/share/icewm/themes/DeimOS-Dark/taskbar/icewm.png
ln -s /usr/share/icons/oxygen/base/22x22/places/desktop.png /usr/share/icewm/themes/DeimOS-Dark/taskbar/desktop.png
ln -s /usr/share/icons/oxygen/base/16x16/actions/window-duplicate.png /usr/share/icewm/themes/DeimOS-Dark/taskbar/windows.png

# Set default IceWM theme
cat > /etc/icewm/theme << THEME_EOF
Theme="DeimOS-Dark/default.theme"
THEME_EOF

%end
