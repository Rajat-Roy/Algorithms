
# Configuration List
configure_file(AlgorithmsConfig.h.in AlgorithmsConfig.h)
add_subdirectory(Math)
list(APPEND EXTRA_LIBS Math)
list(APPEND EXTRA_INCLUDES "${PROJECT_SOURCE_DIR}/src/Math")

# add the executable
add_executable(Algorithms main.cpp)

# add the binary tree to the search path for include files
# so that we will find AlgorithmsConfig.h
target_link_libraries(Algorithms PRIVATE ${EXTRA_LIBS})
target_include_directories(
  Algorithms PUBLIC
  "${PROJECT_BINARY_DIR}/src"
  ${EXTRA_INCLUDES}
  )


install(TARGETS Algorithms DESTINATION bin)
install(FILES "${PROJECT_BINARY_DIR}/src/AlgorithmsConfig.h"
        DESTINATION include
)
