# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/Test_3App_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/Test_3App_autogen.dir/ParseCache.txt"
  "Test_3App_autogen"
  "content/CMakeFiles/content_autogen.dir/AutogenUsed.txt"
  "content/CMakeFiles/content_autogen.dir/ParseCache.txt"
  "content/CMakeFiles/contentplugin_autogen.dir/AutogenUsed.txt"
  "content/CMakeFiles/contentplugin_autogen.dir/ParseCache.txt"
  "content/CMakeFiles/contentplugin_init_autogen.dir/AutogenUsed.txt"
  "content/CMakeFiles/contentplugin_init_autogen.dir/ParseCache.txt"
  "content/content_autogen"
  "content/contentplugin_autogen"
  "content/contentplugin_init_autogen"
  "imports/Test_3/CMakeFiles/Test_3_autogen.dir/AutogenUsed.txt"
  "imports/Test_3/CMakeFiles/Test_3_autogen.dir/ParseCache.txt"
  "imports/Test_3/CMakeFiles/Test_3plugin_autogen.dir/AutogenUsed.txt"
  "imports/Test_3/CMakeFiles/Test_3plugin_autogen.dir/ParseCache.txt"
  "imports/Test_3/CMakeFiles/Test_3plugin_init_autogen.dir/AutogenUsed.txt"
  "imports/Test_3/CMakeFiles/Test_3plugin_init_autogen.dir/ParseCache.txt"
  "imports/Test_3/Test_3_autogen"
  "imports/Test_3/Test_3plugin_autogen"
  "imports/Test_3/Test_3plugin_init_autogen"
  )
endif()
