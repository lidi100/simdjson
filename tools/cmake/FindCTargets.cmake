if (CMAKE_VERSION VERSION_GREATER 3.0.0)
  cmake_policy(VERSION 3.0.0)
endif ()


function(add_cpp_test TEST_NAME)
  add_executable(${TEST_NAME} ${TEST_NAME}.cpp)
  target_link_libraries(${TEST_NAME} ${SIMDJSON_LIB_NAME})
  add_test(${TEST_NAME} ${TEST_NAME})
endfunction(add_cpp_test)

function(add_cpp_benchmark BENCH_NAME)
  add_executable(${BENCH_NAME} ${BENCH_NAME}.cpp)
  target_link_libraries(${BENCH_NAME} ${SIMDJSON_LIB_NAME})
endfunction(add_cpp_benchmark)

function(add_cpp_tool TOOL_NAME)
  add_executable(${TOOL_NAME} ${TOOL_NAME}.cpp)
  target_link_libraries(${TOOL_NAME} ${SIMDJSON_LIB_NAME})
endfunction(add_cpp_tool)