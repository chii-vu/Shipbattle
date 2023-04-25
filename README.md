# ShipBattle

ShipBattle is a game where enemy ships are hidden on a grid. The player guesses grid positions to shoot at and the game lets the player know whether their shot hit the ship, missed the ship, or hit a position that was previously shot at. A ship sinks as soon as it is hit. The game ends either when the player quits or when all ships have been sunk.

The rules for ShipBattle are different from a similar well-known game, Battleship. In Battleship, ships have different sizes, occupy more than one grid position and require multiple hits to sink. In ShipBattle, every ship occupies only one grid position and only requires one hit to sink. Moreover, Battleship involves two players. ShipBattle is a solitaire game for one player.

## Prerequisites

- CMake (version 3.0 or higher)
- C++ Compiler

## Instructions

- Clone the repository to your local machine.
- Navigate to the project directory in the terminal.
- Run `cmake .` in the terminal. This command will generate the necessary makefiles.
- Run `make` to compile the game.
- Finally, run `./shipbattle` to start the game.

## Gameplay

In the game, you'll be playing a ship battle game against the computer. You'll have to guess where the computer has placed its ships on a grid, and the computer will do the same to try to sink your ships. The game continues until either you or the computer has sunk all of the opponent's ships.

https://user-images.githubusercontent.com/115325256/234394175-f537e89f-89f5-4401-a5e7-44080d596e77.mp4

## Additional Notes

This game was created as a part of an assignment for the course CMPT 214: Programming Principles and Practice.
