cmake_minimum_required(VERSION 3.21)

project(Algorithms VERSION 1.0)

add_subdirectory(src)

# Packaging
include(InstallRequiredSystemLibraries)
set(CPACK_GENERATOR "DEB")
set(CPACK_RESOURCE_FILE_LICENSE "${PROJECT_SOURCE_DIR}/LICENSE")
set(CPACK_PACKAGE_VERSION_MAJOR "${Algorithms_VERSION_MAJOR}")
set(CPACK_PACKAGE_VERSION_MINOR "${Algorithms_VERSION_MINOR}")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Rajat Roy") # required
set(CPACK_PACKAGE_DESCRIPTION_FILE "${PROJECT_SOURCE_DIR}/Description.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "FULL SUMMARY")
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "https://www.bauddhik.com")
include(CPack)