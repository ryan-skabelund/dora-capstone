# Install script for directory: /home/ryan/Desktop/gr-openlst/python/openlst

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.10/dist-packages/gnuradio/openlst" TYPE FILE FILES
    "/home/ryan/Desktop/gr-openlst/python/openlst/__init__.py"
    "/home/ryan/Desktop/gr-openlst/python/openlst/crc.py"
    "/home/ryan/Desktop/gr-openlst/python/openlst/fec.py"
    "/home/ryan/Desktop/gr-openlst/python/openlst/whitening.py"
    "/home/ryan/Desktop/gr-openlst/python/openlst/openlst_mod.py"
    "/home/ryan/Desktop/gr-openlst/python/openlst/openlst_demod.py"
    "/home/ryan/Desktop/gr-openlst/python/openlst/raw_file_sink.py"
    "/home/ryan/Desktop/gr-openlst/python/openlst/raw_zmq_source.py"
    "/home/ryan/Desktop/gr-openlst/python/openlst/raw_zmq_sink.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.10/dist-packages/gnuradio/openlst" TYPE FILE FILES
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/__init__.pyc"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/crc.pyc"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/fec.pyc"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/whitening.pyc"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/openlst_mod.pyc"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/openlst_demod.pyc"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/raw_file_sink.pyc"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/raw_zmq_source.pyc"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/raw_zmq_sink.pyc"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/__init__.pyo"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/crc.pyo"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/fec.pyo"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/whitening.pyo"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/openlst_mod.pyo"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/openlst_demod.pyo"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/raw_file_sink.pyo"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/raw_zmq_source.pyo"
    "/home/ryan/Desktop/gr-openlst/build/python/openlst/raw_zmq_sink.pyo"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ryan/Desktop/gr-openlst/build/python/openlst/bindings/cmake_install.cmake")

endif()

