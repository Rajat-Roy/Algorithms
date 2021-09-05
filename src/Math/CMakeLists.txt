add_library(Math SHARED Math.cpp)

install(TARGETS Math DESTINATION lib)
install(FILES Math.h DESTINATION include)