cmake_minimum_required(VERSION 3.24)
project(FilmDadaAnalysis)

set(CMAKE_CXX_STANDARD 17)
set(JSON_BuildTests OFF CACHE INTERNAL "")

add_subdirectory(nlohmann_json)

add_executable(FilmDadaAnalysis main.cpp)
target_link_libraries(FilmDadaAnalysis PRIVATE nlohmann_json::nlohmann_json)