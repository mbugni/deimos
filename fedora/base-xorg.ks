# base-xorg.ks
#
# Defines the basics for Xorg environment.

%packages --excludeWeakdeps

# Xorg modules (see @base-x)
xorg-x11-server-Xorg
xorg-x11-xauth
xorg-x11-xinit

# Xorg drivers (see @base-x)
libva-vdpau-driver
libvdpau-va-gl
mesa-*-drivers
xorg-x11-drivers
xorg-x11-drv-amdgpu

# Xorg utils (see @base-x)
glx-utils
vulkan-tools
xdpyinfo
xrandr

%end
