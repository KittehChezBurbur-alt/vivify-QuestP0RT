cmake_minimum_required(VERSION 3.16)
project(vivify-questport)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add source files
set(SOURCES
    src/main.cpp
)

# Create shared library
add_library(vivify SHARED ${SOURCES})

# Include directories
target_include_directories(vivify PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# Link libraries (adjust based on your actual dependencies)
# target_link_libraries(vivify PRIVATE
#     questapi
#     beatsaber-hook
# )

# Output configuration
set_target_properties(vivify PROPERTIES
    PREFIX ""
    SUFFIX ".so"
)

# Installation
install(TARGETS vivify DESTINATION lib)
