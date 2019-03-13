get_filename_component(tutorial_name ${CMAKE_CURRENT_LIST_DIR} NAME)

if(NOT TARGET dart-utils-urdf OR NOT TARGET dart-gui-glut)
  return()
endif()

file(GLOB srcs "*.cpp" "*.hpp")

add_executable(${tutorial_name} ${srcs})
target_link_libraries(${tutorial_name} dart dart-utils-urdf dart-gui-glut)
set_target_properties(${tutorial_name}
  PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)

dart_add_tutorial(${tutorial_name})
