#!/bin/sh

scons platform=x11
scons platform=x11 tools=no target=release_debug bits=64
scons platform=x11 tools=no target=release bits=64

sudo ln -s $PWD"/bin/"godot.x11.tools.64 /usr/local/bin/godot

# Windows 64 Release and Debug (UPX does not support it yet)

scons -j 4 p=windows target=release tools=no bits=64
cp bin/godot.windows.opt.64.exe $HOME.godot/templates/windows_64_release.exe
x86_64-w64-mingw32-strip $HOME.godot/templates/windows_64_release.exe

scons -j 4 p=windows target=release_debug tools=no bits=64
cp bin/godot.windows.opt.debug.64.exe $HOME.godot/templates/windows_64_debug.exe
x86_64-w64-mingw32-strip $HOME.godot/templates/windows_64_debug.exe

# Linux 64 Release and Debug

scons -j 4 p=x11 target=release tools=no bits=64
cp bin/godot.x11.opt.64 $HOME.godot/templates/linux_x11_64_release

scons -j 4 p=x11 target=release_debug tools=no bits=64
cp bin/godot.x11.opt.debug.64 $HOME.godot/templates/linux_x11_64_debug


