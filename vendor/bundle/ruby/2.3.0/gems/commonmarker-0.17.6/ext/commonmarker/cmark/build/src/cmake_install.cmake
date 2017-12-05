# Install script for directory: /Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/src

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/src/cmark-gfm")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cmark-gfm" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cmark-gfm")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cmark-gfm")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/src/libcmark-gfm.0.28.3.gfm.11.dylib"
    "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/src/libcmark-gfm.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcmark-gfm.0.28.3.gfm.11.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcmark-gfm.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/src/libcmark-gfm.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcmark-gfm.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcmark-gfm.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcmark-gfm.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/src/libcmark-gfm.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/src/cmark.h"
    "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/src/cmark_extension_api.h"
    "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/src/cmark_export.h"
    "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/src/cmark_version.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cmark-gfm.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cmark-gfm.cmake"
         "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/src/CMakeFiles/Export/lib/cmake/cmark-gfm.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cmark-gfm-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cmark-gfm.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake" TYPE FILE FILES "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/src/CMakeFiles/Export/lib/cmake/cmark-gfm.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake" TYPE FILE FILES "/Users/valentine/Documents/EPFL/MA3/ADA/ADAProject_Bacsa_Beuret_Santarelli/vendor/bundle/ruby/2.3.0/gems/commonmarker-0.17.6/ext/commonmarker/cmark/build/src/CMakeFiles/Export/lib/cmake/cmark-gfm-release.cmake")
  endif()
endif()

