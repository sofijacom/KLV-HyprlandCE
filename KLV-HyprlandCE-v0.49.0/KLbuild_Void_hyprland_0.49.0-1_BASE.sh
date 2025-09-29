#!/bin/bash
# Sofiya Created: 29.09.2025 Licence: MIT
# KLbuild_Void_hyprland_0.49.0-1_swayBASE.sh version 6.0
# Revision date:

# General Build Instructions:
# Create an empty directory at root of partition you want to bootfrom
# For example: /KLV_hyprland
# In a terminal opened at that bootfrom directory simply run this single script!!! ;-)

# Fetch the build_firstrib_rootfs build parts:
wget -c https://gitlab.com/sofija.p2018/kla-ot2/-/raw/main/KLA-Hyprland/huge_kernels/build_firstrib_rootfs.sh && chmod +x build_firstrib_rootfs.sh

# rockedge minimal Void Linux build plugin used during the build (you can add to this plugin for whatever extras you want in your build)
wget -c https://gitlab.com/sofija.p2018/kla-ot2/-/raw/main/KLA-Hyprland/plugin-0.49.0_1/f_00_Void_wayland_hyprland_0.49_no-kernelBASE.plug

# Download the boot components:
wget -c https://github.com/sofijacom/linux-6.11.1.arch1-1-x86_64/releases/download/linux-6.6.62_1/00modules_6.6.62_1.sfs
wget -c https://github.com/sofijacom/linux-6.11.1.arch1-1-x86_64/releases/download/linux-6.6.62_1/01firmware_6.6.62_1.sfs
wget -c https://github.com/sofijacom/linux-6.11.1.arch1-1-x86_64/releases/download/linux-6.6.62_1/initrd.gz
wget -c https://github.com/sofijacom/linux-6.11.1.arch1-1-x86_64/releases/download/linux-6.6.62_1/vmlinuz

# Some useful FirstRib utilities in case you want to modify the initrd or the 07firstrib_rootfs
# All these utilities have a --help option
wget -c https://gitlab.com/sofija.p2018/kla-ot2/-/raw/main/KLA-Hyprland/FirstRib/wd_grubconfig && chmod +x wd_grubconfig  # When run finds correct grub menu stanza for your system
wget -c https://gitlab.com/sofija.p2018/kla-ot2/-/raw/main/KLA-Hyprland/FirstRib/modify_initrd_gz.sh && chmod +x modify_initrd_gz.sh  # For 'experts' to modify initrd.gz
wget -c https://gitlab.com/sofija.p2018/kla-ot2/-/raw/main/KLA-Hyprland/FirstRib/mount_chroot.sh && chmod +x mount_chroot.sh  # To enter rootfs in a chroot
wget -c https://gitlab.com/sofija.p2018/kla-ot2/-/raw/main/KLA-Hyprland/FirstRib/umount_chroot.sh && chmod +x umount_chroot.sh  # to 'clean up mounts used by above mount_chroot.sh'
wget -c https://gitlab.com/sofija.p2018/kla-ot2/-/raw/main/KLA-Hyprland/FirstRib/mount_chroot_umount.sh && chmod +x mount_chroot_umount.sh  # combined mount and umount chroot...
# wget -c https://gitlab.com/sofija.p2018/kla-ot2/-/raw/main/KLA-Hyprland/FirstRib/w_init && chmod +x w_init
# wget -c https://gitlab.com/sofija.p2018/kla-ot2/-/raw/main/KLA-Hyprland/FirstRib/restore-sys && chmod +x restore-sys 

# Optional addon layers

# Main KL addon containing the likes of gtkdialog, filemnt, UExtract, gxmessage, save2flash and more
# save2flash works with command-line-only distros too
wget -c https://gitlab.com/sofija.p2018/kla-ot2/-/raw/main/KLA-Hyprland/build_system/12KL_gtkdialogGTK3filemnt64.sfs

# Build the Void Linux root filesystem to firstrib_rootfs directory
# NOTE WELL: If you have an alternative f_plugin in your bootfrom directory (name must start with f_),
# simply alter below command to use it
./build_firstrib_rootfs.sh void default amd64 f_00_Void_wayland_hyprland_0.49_no-kernelBASE.plug

# Number the layer ready for booting
mv firstrib_rootfs 07firstrib_rootfs

# The only thing now to do is find correct grub stanza for your system
printf "\nPress any key to run utility wd_grubconfig
which will output suitable exact grub stanzas
Use one of these with your pre-installed grub
Press enter to finish\n"
read choice
./wd_grubconfig
exit 0


