# Install script for directory: /Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/extensions

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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/extensions/libcmark-gfmextensions.0.28.3.gfm.11.dylib"
    "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/extensions/libcmark-gfmextensions.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcmark-gfmextensions.0.28.3.gfm.11.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcmark-gfmextensions.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/src"
        "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/extensions/libcmark-gfmextensions.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcmark-gfmextensions.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcmark-gfmextensions.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcmark-gfmextensions.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/extensions/core-extensions.h"
    "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/extensions/cmarkextensions_export.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake-gfmextensions/cmark-gfmextensions.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake-gfmextensions/cmark-gfmextensions.cmake"
         "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/extensions/CMakeFiles/Export/lib/cmake-gfmextensions/cmark-gfmextensions.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake-gfmextensions/cmark-gfmextensions-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake-gfmextensions/cmark-gfmextensions.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake-gfmextensions" TYPE FILE FILES "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/extensions/CMakeFiles/Export/lib/cmake-gfmextensions/cmark-gfmextensions.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake-gfmextensions" TYPE FILE FILES "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/extensions/CMakeFiles/Export/lib/cmake-gfmextensions/cmark-gfmextensions-release.cmake")
  endif()
endif()

