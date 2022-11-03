cmake_minimum_required(VERSION 3.10)

project(yolox)

add_definitions(-std=c++11)

option(CUDA_USE_STATIC_CUDA_RUNTIME OFF)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_BUILD_TYPE Debug)

find_package(CUDA REQUIRED)

include_directories(${PROJECT_SOURCE_DIR}/include)
# include and link dirs of cuda and tensorrt, you need adapt them if yours are different
# cuda
include_directories(/devdata/ALLCUDA/cuda-11.1/include)
link_directories(/devdata/ALLCUDA/cuda-11.1/lib64)
# cudnn
include_directories(/devdata/ALLCUDA/cudnn-8.0.5.39/include)
link_directories(/devdata/ALLCUDA/cudnn-8.0.5.39/lib64)
# tensorrt
include_directories(/devdata/Software/TensorRT-7.2.3.4/include)
link_directories(/devdata/Software/TensorRT-7.2.3.4/lib)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Ofast -Wfatal-errors -D_MWAITXINTRIN_H_INCLUDED")

find_package(OpenCV)
include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(yolox ${PROJECT_SOURCE_DIR}/yolox.cpp)
target_link_libraries(yolox nvinfer)
target_link_libraries(yolox cudart)
target_link_libraries(yolox ${OpenCV_LIBS})

add_definitions(-O2 -pthread)

