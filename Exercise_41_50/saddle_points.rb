=begin
Write your code for the 'Saddle Points' exercise in this file. Make the tests in
`saddle_points_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/saddle-points` directory.
=end
class Matrix
    attr_accessor :rows, :columns
    def initialize(str)
        @rows = []
        @columns = []
      @matrix = str.split("\n")
      @matrix = @matrix.map {
          |row|
          row.split(" ").map(&:to_i)
      }
      @matrix.each {
          |row|
          @rows << row
      }
      @matrix.transpose.each {
        |col|
        @columns << col
    }
    end

    def saddle_points
        max_ele_in_row = @rows.map {
            |row|
            row.max
        }
        min_ele_in_col =  @columns.map {
            |col|
            col.min
        }
        res = []
        max_ele_in_row.each_with_index {
            |ele_row, row_index|
            min_ele_in_col.each_with_index {
                |ele_col,col_index|
                if ele_col == ele_row
                    res << [row_index,col_index]
                end
            }
        }
        res
    end
  end

  matrix = Matrix.new("4 5 4\n3 5 5\n1 5 4")
  p matrix.saddle_points
