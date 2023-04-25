#ifndef __GAMEBOARD_H__
#define __GAMEBOARD_H__

// A board position is represented by a row and column.
typedef struct board_position
{
    // Row coordinate for a gameboard with size width x height,
    // must not greater than (board height)-1
    unsigned int row;

    // Column coordinate for a gameboard with size width x height,
    // must not be greater than (board width)-1
    unsigned int col;
} BoardPosition;

// A gameboard type.
typedef struct gameboard
{
    // width and height of the gameboard
    unsigned int width;
    unsigned int height;

    // number (5-10) of hidden ships
    unsigned int num_ships;

    // current number of shots taken by player
    unsigned int num_shots;

    // grid positions of ships on gameboard
    BoardPosition ships[10];

    // game state: grid positions at which the user has taken shots
    // represented as 2D array of integers: 0 (not shot at), 1 (miss), or 2 (hit)
    int **shots;
} Gameboard;

// Macros for RESULT values
#define RESULT_HIT 2
#define RESULT_MISS 1
#define RESULT_REPEAT 0
#define RESULT_INVALID 3

// Function Prototypes for gameboard.c

/**
 * Create a new gameboard with a specified width and height.
 *
 * @param height  Height of the gameboard (must be between 5 and 26)
 * @param width   Width of the gameboard (must be between 5 and 26)
 * @return        Newly created gameboard
 */
Gameboard *create_gameboard(unsigned int width, unsigned int height);

/**
 * Print gameboard to console
 *
 * @param board   Gameboard to be printed
 */
void print_game_state(Gameboard *board);

/**
 * Given a board position, return the result of the shot (hit, miss, repeat, or invalid)
 *
 * @param board   Gameboard currently in play
 * @param pos     Position to check
 * @return        Result of the shot
 */
int check_for_hit(Gameboard *board, BoardPosition pos);

/**
 * Record in game state that a hit has occurred at the given game board position
 *
 * @param board   The gameboard currently in play
 * @param pos     The position to check
 */
void record_hit(Gameboard *board, BoardPosition pos);

/**
 * Record in game state that a miss has occurred at the given game board position
 *
 * @param board   The gameboard currently in play
 * @param pos     The position to check
 */
void record_miss(Gameboard *board, BoardPosition pos);

/**
 * Determine if player has won the game based on game state
 *
 * @param board   The gameboard currently in play
 */
int is_victory(Gameboard *board);

/**
 * Free the memory allocated for the gameboard
 *
 * @param board   gameboard to destroy.
 */
void destroy_gameboard(Gameboard *board);

#endif
