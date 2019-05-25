cmake_minimum_required ( VERSION 3.5 )

project (3DGame)

set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror -std=c++17")

set (source_dir "${PROJECT_SOURCE_DIR}/src")

file (GLOB source_files1 "${source_dir}/*.cpp")
file (GLOB source_files2 "${source_dir}/vendor/glad/glad.c")
file (GLOB source_files3 "${source_dir}/vendor/stb_image/*.cpp")
file (GLOB source_files4 "${source_dir}/graphics/*.cpp")
file (GLOB source_files5 "${source_dir}/render_objects/*.cpp")
file (GLOB source_files6 "${source_dir}/scenes/*.cpp")
file (GLOB source_files7 "${source_dir}/game_objects/*.cpp")



add_executable(game ${source_files1}
					${source_files2}
					${source_files3}
					${source_files4}
					${source_files5}
					${source_files6}
					${source_files7})

target_link_libraries(game -lglfw -lGL -lX11 -lpthread -ldl)
