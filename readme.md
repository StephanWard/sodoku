Example Usage of a 9x9 grid

grid = [
  [5, 3, 0, 0, 7, 0, 0, 0, 0],
  [6, 0, 0, 1, 9, 5, 0, 0, 0],
  [0, 9, 8, 0, 0, 0, 0, 6, 0],
  [8, 0, 0, 0, 6, 0, 0, 0, 3],
  [4, 0, 0, 8, 0, 3, 0, 0, 1],
  [7, 0, 0, 0, 2, 0, 0, 0, 6],
  [0, 6, 0, 0, 0, 0, 2, 8, 0],
  [0, 0, 0, 4, 1, 9, 0, 0, 5],
  [0, 0, 0, 8, 0, 0, 7, 9, 5]
]

solve_sudoku(grid)

# Display the solved grid
grid.each { |row| puts row.join(' ') }

After calling solve_sudoku(grid), the method will attempt to solve the Sudoku puzzle. If a solution exists, it will modify the grid array to hold the solved Sudoku grid. Finally, the code snippet displays the solved grid by printing each row of the grid.

You can replace the initial grid array with your own Sudoku puzzle, ensuring that empty cells are represented by 0. The algorithm will attempt to solve it, and if a solution exists, it will be printed to the console.

Note that the provided example assumes a standard 9x9 Sudoku grid. If you wish to solve a Sudoku grid of a different size, you would need to modify the code accordingly.
