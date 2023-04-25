#include <stdio.h>
#include <err.h>
#include <stdlib.h>
#include "rand_num.h"
#include "gameboard.h"

/**
 * Create a new gameboard with a specified wisdth and height.
 *
 * @param height  Height of the gameboard (must be between 5 and 26)
 * @param width   Width of the gameboard (must be between 5 and 26)
 * @return        Newly created gameboard
 */
Gameboard *create_gameboard(unsigned int width, unsigned int height)
{
    // allocate memory for gameboard
    Gameboard *board = (Gameboard *)malloc(sizeof(Gameboard));

    // set board width and height
    board->width = width;
    board->height = height;

    // randomly determine how many ships there are
    do
    {
        board->num_ships = rand_num(10);
    } while (board->num_ships < 5);

    // randomly determine positions of ships
    for (unsigned int i = 0; i < board->num_ships; i++)
    {
        board->ships[i].row = rand_num(height);
        board->ships[i].col = rand_num(width);
        for (unsigned int j = 0; j < i; j++)
        {
            // check previous ships to see if any occupy the same position
            if (board->ships[i].row == board->ships[j].row && board->ships[i].col == board->ships[j].col)
            {
                i--; // if there's overlap, choose a different random location
                break;
            }
        }
    }

    board->num_shots = 0;

    // allocate memory for shots array
    board->shots = (int **)malloc(sizeof(int *) * height);
    for (unsigned int i = 0; i < height; i++)
    {
        // all positions are initially set to 0 (not shot at yet)
        board->shots[i] = (int *)calloc(width, sizeof(int));
    }

    return board;
}

/**
 * Print gameboard to console
 *
 * @param board   Gameboard to be printed
 */
void print_game_state(Gameboard *board)
{
    // print top column numbers
    printf(" ");
    for (unsigned int i = 0; i < board->width; i++)
    {
        printf("%5d", i + 1);
    }
    printf("\n");

    // print the gameboard
    for (unsigned int i = 0; i < board->height; i++)
    {
        for (unsigned int j = 0; j < board->width; j++)
        {
            if (j == 0)
            {
                // print row letter
                printf("%c", 'A' + i);
            }

            if (board->shots[i][j] == 0)
            {
                printf("%5c", '.');
            }
            else if (board->shots[i][j] == 1)
            {
                printf("%5c", 'o');
            }
            else if (board->shots[i][j] == 2)
            {
                printf("%5c", 'X');
            }
        }
        printf("\n");
    }
}

/**
 * Given a board position, return the result of the shot (hit, miss, repeat, or invalid)
 *
 * @param board   Gameboard currently in play
 * @param pos     Position to check
 * @return        Result of the shot
 */
int check_for_hit(Gameboard *board, BoardPosition pos)
{
    // validate position
    if (pos.row >= board->height || pos.col >= board->width)
    {
        return RESULT_INVALID;
    }

    // increment number of shots taken
    board->num_shots++;

    // check if position has been shot at before
    if (board->shots[pos.row][pos.col] != 0)
    {
        return RESULT_REPEAT;
    }

    // check if there's a ship at the position
    for (unsigned int i = 0; i < board->num_ships; i++)
    {
        if (pos.row == board->ships[i].row && pos.col == board->ships[i].col)
        {
            return RESULT_HIT;
        }
    }

    // if no ship at position, it's a miss
    return RESULT_MISS;
}

/**
 * Record in game state that a hit has occurred at the given game board position
 *
 * @param board   The gameboard currently in play
 * @param pos     The position to check
 */
void record_hit(Gameboard *board, BoardPosition pos)
{
    // validate position
    if (pos.row > board->height - 1 || pos.col > board->width - 1 || board->shots[pos.row][pos.col] != 0)
    {
        errx(1, "Invalid position");
    }

    // check if position is a hit
    for (unsigned int i = 0; i < board->num_ships; i++)
    {
        if (pos.row == board->ships[i].row && pos.col == board->ships[i].col)
        {
            // mark position as a hit
            board->shots[pos.row][pos.col] = 2;
            return;
        }
    }
}

/**
 * Record in game state that a miss has occurred at the given game board position
 *
 * @param board   The gameboard currently in play
 * @param pos     The position to check
 */
void record_miss(Gameboard *board, BoardPosition pos)
{
    // validate position
    if (pos.row > board->height - 1 || pos.col > board->width - 1 || board->shots[pos.row][pos.col] != 0)
    {
        errx(1, "Invalid position");
    }

    // check if position is a miss
    for (unsigned int i = 0; i < board->num_ships; i++)
    {
        if (pos.row != board->ships[i].row || pos.col != board->ships[i].col)
        {
            // mark position as a miss
            board->shots[pos.row][pos.col] = 1;
            return;
        }
    }
}

/**
 * Determine if player has won the game based on game state
 *
 * @param board   The gameboard currently in play
 */
int is_victory(Gameboard *board)
{
    // check if all ships have been sunk
    for (unsigned int i = 0; i < board->num_ships; i++)
    {
        if (board->shots[board->ships[i].row][board->ships[i].col] != 2)
        {
            // as soon as an unsunken ship is found, report loss
            return 0;
        }
    }

    return 1;
}

/**
 * Free the memory allocated for the gameboard
 *
 * @param board   gameboard to destroy.
 */
void destroy_gameboard(Gameboard *board)
{
    // free memory allocated for shot positions
    for (unsigned int i = 0; i < board->height; i++)
    {
        free(board->shots[i]);
    }
    free(board->shots);

    // free memory allocated for gameboard itself
    free(board);
}
