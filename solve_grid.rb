def solve_sudoku(grid)
  solve(grid)
end

def solve(grid)
  row, col = find_empty_cell(grid)

  # If there are no empty cells, the puzzle is solved
  return true if row.nil? && col.nil?

  # Try each digit from 1 to 9
  (1..9).each do |digit|
    # Check if the digit is valid in the current cell
    if valid_digit?(grid, row, col, digit)
      # Place the digit in the current cell
      grid[row][col] = digit

      # Recursively solve the next empty cell
      if solve(grid)
        return true
      else
        # If the placement leads to an unsolvable state, backtrack
        grid[row][col] = 0
      end
    end
  end

  # If no digit leads to a solution, backtrack
  false
end

def find_empty_cell(grid)
  # Find the first empty cell (represented by 0)
  (0..8).each do |row|
    (0..8).each do |col|
      return row, col if grid[row][col] == 0
    end
  end

  # If no empty cell is found, return nil
  return nil, nil
end

def valid_digit?(grid, row, col, digit)
  # Check if the digit is valid in the current row
  return false if grid[row].include?(digit)

  # Check if the digit is valid in the current column
  return false if grid.transpose[col].include?(digit)

  # Check if the digit is valid in the current subgrid
  start_row = (row / 3) * 3
  start_col = (col / 3) * 3

  (start_row..start_row + 2).each do |r|
    (start_col..start_col + 2).each do |c|
      return false if grid[r][c] == digit
    end
  end

  true
end
