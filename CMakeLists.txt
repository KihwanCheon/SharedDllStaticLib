cmake_minimum_required (VERSION 3.11)

project(SharedDllStaticLib)

add_subdirectory(StaticLib)
add_subdirectory(SharedDll)
add_subdirectory(ExeStatic)
add_subdirectory(ExeShared)