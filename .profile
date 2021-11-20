# export TERM='konsole-256color'
export PATH="$HOME/bin:$PATH"
export WINEESYNC=1
export WINEFSYNC=1
export WINEFSYNC_FUTEX2=1
export NODEVICE_SELECT=1 #for mangohud to work with amd
export _JAVA_OPTIONS='-Dsun.java2d.opengl=true' # Switching to OpenGL-based hardware acceleration pipeline will improve 2D performance
export MOZ_X11_EGL=1
#export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.i686.json:/usr/share/vulkan/icd.d/radeon_icd.x86_64.json
export AMD_VULKAN_ICD=RADV
export DISABLE_LAYER_AMD_SWITCHABLE_GRAPHICS_1=1
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/amd_pro_icd32.json:/usr/share/vulkan/icd.d/amd_pro_icd64.json:/usr/share/vulkan/icd.d/amd_icd32.json:/usr/share/vulkan/icd.d/amd_icd64.json:/usr/share/vulkan/icd.d/radeon_icd.i686.json:/usr/share/vulkan/icd.d/radeon_icd.x86_64.json
export STEAM_COMPAT_CLIENT_INSTALL_PATH=~/.local/share/steam2
