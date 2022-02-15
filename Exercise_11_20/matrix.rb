=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

# rows.transpose :)
class Matrix
    
    attr_accessor :rows, :columns
    def initialize(s)
      @rows = s.split(/\n/)
      @columns = []
      @rows = @rows.map {
        |row|
        row.split.map {
          |value|
          value.to_i
        }
      }
      for i in 0...@rows[0].length
        @columns[i] = @rows.map {
            |row|
            row[i]
        }
      end
    end
end

