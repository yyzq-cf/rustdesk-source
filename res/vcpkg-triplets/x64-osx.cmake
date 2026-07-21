set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)
set(VCPKG_CMAKE_SYSTEM_NAME Darwin)
set(VCPKG_OSX_ARCHITECTURES x86_64)
# Cross-compiling on arm64 runner for x86_64
# Disable nasm for aom: arm64 nasm doesn't support x86_64 multipass optimization
set(VCPKG_CMAKE_CONFIGURE_OPTIONS
    -DCMAKE_SYSTEM_PROCESSOR=x86_64
    -DCMAKE_CROSSCOMPILING=ON
    -DAOM_USE_NASM=OFF
)
# Force compiler to target x86_64 so __pie__/__PIE__ macros are correct
set(VCPKG_C_FLAGS "-arch x86_64")
set(VCPKG_CXX_FLAGS "-arch x86_64")
