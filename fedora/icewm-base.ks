# icewm-base.ks
#
# Defines the basics for the IceWM desktop.

%packages --excludeWeakdeps

arandr
fedora-release-kde
icewm
konsole5
kmix
notification-daemon
oxygen-icon-theme
qt5ct
upower

%end

%post

# Set default GTK+ theme for root (see #683855, #689070, #808062)
cat > /root/.gtkrc-2.0 << EOF
include "/usr/share/themes/Adwaita/gtk-2.0/gtkrc"
include "/etc/gtk-2.0/gtkrc"
gtk-theme-name="Adwaita"
EOF
mkdir -p /root/.config/gtk-3.0
cat > /root/.config/gtk-3.0/settings.ini << EOF
[Settings]
gtk-theme-name = Adwaita
EOF

# Create IceWM default folder
mkdir -p /etc/icewm

# Set default IceWM menu
cat > /etc/icewm/menu << MENU_EOF
includeprog icewm-menu-fdo --sep-before --no-sep-others --no-sub-cats 
MENU_EOF

# Set default IceWM preferences
cat > /etc/icewm/preferences << PREF_EOF
IconThemes="hicolor:oxygen:Adwaita:*"
TaskBarShowMailboxStatus=0
TaskBarShowWorkspaces=0
TaskBarWorkspacesLimit=1
WorkspaceNames=" Workspace "
TimeFormat="%H:%M"
KeyboardLayouts="it","us"
PREF_EOF

cat > /etc/icewm/winoptions << WINOPT_EOF
# Fix Dolphin window buttons
dolphin.dResize: 1
dolphin.dMinimize: 1
dolphin.dMaximize: 1
WINOPT_EOF

# Set default IceWM startup apps
cat > /etc/icewm/startup << START_EOF
# Start notification server
/usr/bin/dunst &

# Start Kmix applet
sleep 1 && kmix --keepvisibility &
START_EOF
chmod +x /etc/icewm/startup

# Set default IceWM toolbar
cat > /etc/icewm/toolbar << TOOL_EOF
# Icewm toolbar definition file
TOOL_EOF

# Set default Qt5 theme
cat > /etc/icewm/env << ENV_EOF
LANG=en_US.UTF-8
QT_QPA_PLATFORMTHEME=qt5ct
ENV_EOF

# Create Qt5 Configuration Tool folder
mkdir -p /etc/xdg/qt5ct

# Set default Qt5 settings
cat > /etc/xdg/qt5ct/qt5ct.conf << QT5CT_EOF
[Appearance]
icon_theme=oxygen
standard_dialogs=default
style=Fusion

[Fonts]
fixed=@Variant(\0\0\0@\0\0\0\x12\0M\0o\0n\0o\0s\0p\0\x61\0\x63\0\x65@&\0\0\0\0\0\0\xff\xff\xff\xff\x5\x1\0\x32\x10)
general=@Variant(\0\0\0@\0\0\0\x14\0S\0\x61\0n\0s\0 \0S\0\x65\0r\0i\0\x66@&\0\0\0\0\0\0\xff\xff\xff\xff\x5\x1\0\x32\x10)
QT5CT_EOF

%end
