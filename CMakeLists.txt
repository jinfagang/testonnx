cmake_minimum_required(VERSION 3.8)
if(NOT CMAKE_VERSION VERSION_LESS "3.15")
    # enable CMAKE_MSVC_RUNTIME_LIBRARY
    cmake_policy(SET CMP0091 NEW)
    cmake_policy(SET CMP0074 NEW)
endif()
project(wnnx)

# c++14 is required for using torch headers
set(CMAKE_CXX_STANDARD 14)
SET(CMAKE_BUILD_TYPE "Release")
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")
# add_compile_options(-Wall -Werror -std=c++14)


option(USE_TORCH "enable wnnx from torchscript" ON)
option(USE_ONNX "enable wnnx from onnx" ON)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(GNUInstallDirs)

find_package(Protobuf)
message(STATUS ${Protobuf_INCLUDE_DIRS})
include_directories(${Protobuf_INCLUDE_DIRS})
include_directories(/usr/include)


if (USE_ONNX)
    message(STATUS "build with onnx support.")
    add_subdirectory(onnx)
    message(STATUS "ONNX_INCLUDE_DIRS: " ${ONNX_INCLUDE_DIRS})
    message(STATUS "ONNX_SRCS: " ${ONNX_SRCS})
    include_directories(${ONNX_INCLUDE_DIRS})
    include_directories(build/onnx/onnx)
endif()


include_directories(3rd/flatbuffers/include)
include_directories(3rd/protobuf/src)
include_directories(schema/gen)
include_directories(include/)
include_directories(src/)
include_directories(build/onnx)

find_package(Python3 COMPONENTS Interpreter Development)


add_executable(a a.cc)
target_link_libraries(a onnx ${Protobuf_LIBS})

