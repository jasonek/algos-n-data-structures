require "pry"

def find_islands(matrix)
  island_count = 0

  matrix.each_with_index do |row, row_num|

    row.each_with_index do |col, col_num|

      if col == 1 && row[col_num-1] == 1 # adjacent 1's automatically get tallied
        island_count += 1
        binding.pry
      end

      if col == 1 && matrix[row_num-1][col_num] == 1
        island_count += 1 # tally vertical
      end

    end

  end
  p island_count
end


# if row index differ by just 1, island_count
# if column index is same and row differs by 1, island_count

mat = [[1,0,0],[1,0,1],[0,1,1]]

p find_islands(mat)
