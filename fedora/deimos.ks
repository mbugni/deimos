# deimos.ks
#
# Provides a DeimOS live image.

%include base-desktop.ks
%include icewm-base.ks
%include deimos-theme.ks

%packages --excludeWeakdeps

antimicrox
freedoom
freedoom-freedm
freedoom2
prboom-plus
lightdm-autologin-greeter

%end


%post

echo ""
echo "POST DEIMOS ******************************************"
echo ""

# add initscript
cat >> /etc/rc.d/init.d/livesys << EOF

# set up lightdm autologin
sed -i 's/^#autologin-user=.*/autologin-user=doomguy/' /etc/lightdm/lightdm.conf
sed -i 's/^#autologin-user-timeout=.*/autologin-user-timeout=0/' /etc/lightdm/lightdm.conf

# set IceWM as default session, otherwise login will fail
sed -i 's/^#autologin-session=.*/autologin-session=icewm-session/' /etc/lightdm/lightdm.conf

# add liveinst.desktop to favorites menu
mkdir -p /home/doomguy/.config/

# make sure to set the right permissions and selinux contexts
chown -R doomguy:doomguy /home/doomguy/
restorecon -R /home/doomguy/

EOF

%end
