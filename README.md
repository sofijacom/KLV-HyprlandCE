# KLV-HyprlandCE

![Screenshot_08-May_13-43-29_30907](https://github.com/sofijacom/KLV-HyprlandCE/assets/107557749/2080babb-10c2-42fe-b6ac-113ddd00e8d2)


##


1) Create a folder `KLV-HyprlandCE` typing in the terminal `mkdir -p KLV-HyprlandCE`

2) Open a terminal in the created folder `KLV-HyprlandCE` or go to the folder by typing in the terminal

   - `cd KLV-HyprlandCE`

3) Place the build script  `KLbuild_Void_hyprland_0.39_swayBASE.sh` in the created folder.
   
4) Make it executable.`chmod +x KLbuild_Void_hyprland_0.39_swayBASE.sh`

5) Enter in terminal `./KLbuild_Void_hyprland_0.39_swayBASE.sh`

6) Wait for the build to finish.

7) After the build is complete to package `07firstrib_rootfs` into `07KLV-HyprlandCE-x.x.sfs` where x.x is your build number.

8) Type in terminal.

```
mksquashfs 07firstrib_rootfs 07 KLV-HyprlandCE-x.x.sfs -noappend -comp xz -b 512k
```
  - where x.x is your build number.

9) Delete the `07firstrib_rootfs` folder.

##

FirstRib-KLV build script. 

```
./KLbuild_Void_hyprland_0.39_swayBASE.sh
```
FirstRib-KLV build script PLUG file.

Example of using a .plug file:

```
./f_00_Void_wayland_hyprland_0.39_no-kernelBASE.plug
```

***f_00_Void_wayland_hyprland_0.39_no-kernelBASE.plug***  builds a  ***(root filesystem)***  for the Arch Linux-based Hyprland desktop operating system, similar to **KLV-Hyprland**.

To create a complete distribution, all other utilities, tools and configurations are downloaded from a centralized repository and installed as a .tar.gz file.
