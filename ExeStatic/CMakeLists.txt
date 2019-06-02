cmake_minimum_required (VERSION 3.11)

project(ExeStatic)

set(CMAKE_CXX_STANDARD 11)

IF (WIN32)
    set(CMAKE_CXX_FLAGS_RELEASE "/MT")
    set(CMAKE_CXX_FLAGS_DEBUG "/MTd")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /Od /ZI")
    set(CMAKE_SHARED_LINKER_FLAGS_RELEASE "${CMAKE_SHARED_LINKER_FLAGS_RELEASE} /DEBUG /OPT:REF /OPT:ICF")
ENDIF()

add_definitions(-DSTATIC_LIB)

include_directories(../src)
# file(GLOB src_files ../src/*.h)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} StaticLib)