require "pry"

def find_islands(matrix)
  island_count = 0

  matrix.each_with_index do |row, row_num|
    row.each_with_index do |col, col_num|

      if col == 1 && row[col_num-1] == 1 && col_num != 0 # the not zero condition is necessary to prevent 0-index spaces from comparing to themselves
        island_count += 1 # tally horizontal adjacent
      end

      if col == 1 && matrix[row_num-1][col_num] == 1 && row_num != 0
        island_count += 1 # tally vertical adjacent
      end

    end
  end
  p island_count
end


# if row index differ by just 1, island_count
# if column index is same and row differs by 1, island_count

mat = [[1,0,0],[1,0,1],[0,1,1]]

p find_islands(mat)

"row:#{row_num}   column:#{col_num}   islands:#{island_count}"
