cmake_minimum_required(VERSION 3.15)
project(ShipBattle)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_FLAGS "-Wall -Wextra")
set(CMAKE_L_FLAGS "-L. -lrn")

add_library(rn SHARED rand_num.c)
add_executable(shipbattle shipbattle.c gameplay.c gameboard.c rand_num.c)

target_link_libraries(shipbattle rn)