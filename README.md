
<h3 align="center">
	<img src="https://github.com/JaKooLit/Telegram-Animated-Emojis/blob/main/Activity/Sparkles.webp" alt="Sparkles" width="38" height="38" />
	 Сборка KLV-HyprlandCE 
	<img src="https://github.com/JaKooLit/Telegram-Animated-Emojis/blob/main/Activity/Sparkles.webp" alt="Sparkles" width="38" height="38" />
</h3>

![Скриншот_08-май_20-10-10_21812](https://github.com/sofijacom/KLV-HyprlandCE/assets/107557749/728e739d-9376-4768-96b7-307c83afda1d)


![2024-05-24_22-29](https://github.com/sofijacom/KLV-HyprlandCE/assets/107557749/e47d2377-fe62-4571-94a5-89a2fd1c821b)


##


1) Create a folder `KLV-HyprlandCE` typing in the terminal `mkdir -p KLV-HyprlandCE`

2) Open a terminal in the created folder `KLV-HyprlandCE` or go to the folder by typing in the terminal

   - `cd KLV-HyprlandCE`

3) Place the build script  `KLbuild_Void_hyprland_0.40_swayBASE.sh` in the created folder.
   
4) Make it executable.`chmod +x KLbuild_Void_hyprland_0.40_swayBASE.sh`

5) Enter in terminal `./KLbuild_Void_hyprland_0.40_swayBASE.sh`

6) Wait for the build to finish.

7) After the build is complete to package `07firstrib_rootfs` into `07KLV-HyprlandCE-x.x.sfs` where x.x is your build number.

8) Type in terminal.

```
mksquashfs 07firstrib_rootfs 07KLV-HyprlandCE-x.x.sfs -noappend -comp xz -b 512k
```
  - where x.x is your build number.

9) Delete the `07firstrib_rootfs` folder.

##

FirstRib-KLV build script. 

```
./KLbuild_Void_hyprland_0.40_swayBASE.sh
```
FirstRib-KLV build script PLUG file.

Example of using a .plug file:

```
./f_00_Void_wayland_hyprland_0.40_no-kernelBASE.plug
```

***f_00_Void_wayland_hyprland_0.40_no-kernelBASE.plug***  builds a  ***(root filesystem)***  for the Arch Linux-based Hyprland desktop operating system, similar to **КЛВ-Хайпрланд**.

To create a complete distribution, all other utilities, tools and configurations are downloaded from a centralized repository and installed as a .tar.gz file.

<p align="center">	
  <img src="https://github.com/sofijacom/sofijacom/blob/49e18fe1d7c2223884efd95af9370dcb84697427/icons_line/gray0_ctp_on_line.svg?sanitize=true" />
</p>
