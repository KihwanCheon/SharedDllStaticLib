cmake_minimum_required (VERSION 3.5)

project(SharedDllStaticLib)

add_subdirectory(StaticLib)
add_subdirectory(SharedDll)
add_subdirectory(ExeStatic)
add_subdirectory(ExeShared)