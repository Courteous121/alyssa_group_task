
LINK_LIBRARIES(m)

AUX_SOURCE_DIRECTORY(./src DIR_SRCS)


ADD_LIBRARY(Math SHARED ${DIR_SRCS})

FIND_PACKAGE(OpenCV REQUIRED)
TARGET_INCLUDE_DIRECTORIES(Math PUBLIC include PUBLIC ${OpenCV_INCLUDE_DIRS})
TARGET_LINK_LIBRARIES(Math ${OpenCV_LIBS})
