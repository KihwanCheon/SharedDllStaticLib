cmake_minimum_required (VERSION 3.5)

project(SharedDll)

set(CMAKE_CXX_STANDARD 11)

IF (WIN32)
    set(CMAKE_CXX_FLAGS_RELEASE "/MT")
    set(CMAKE_CXX_FLAGS_DEBUG "/MTd")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /Od /ZI")
    # set(CMAKE_SHARED_LINKER_FLAGS_RELEASE "${CMAKE_SHARED_LINKER_FLAGS_RELEASE} /DEBUG /OPT:REF /OPT:ICF")

    add_definitions(-DSHARED_DLL_EXPORTS)
ENDIF()



include_directories(../src)
file(GLOB src_files ../src/*.cpp ../src/*.h)

add_library(${PROJECT_NAME} SHARED ${src_files})
