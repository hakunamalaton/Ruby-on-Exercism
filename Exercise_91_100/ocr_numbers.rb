=begin
Write your code for the 'Ocr Numbers' exercise in this file. Make the tests in
`ocr_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/ocr-numbers` directory.
=end
class OcrNumbers
    OCR_NUMBERS = {
        "   \n  |\n  |\n   " => 1,
        " _ \n _|\n|_ \n   " => 2,
        " _ \n _|\n _|\n   " => 3,
        "   \n|_|\n  |\n   " => 4,
        " _ \n|_ \n _|\n   " => 5,
        " _ \n|_ \n|_|\n   " => 6,
        " _ \n  |\n  |\n   " => 7,
        " _ \n|_|\n|_|\n   " => 8,
        " _ \n|_|\n _|\n   " => 9,
        " _ \n| |\n|_|\n   " => 0
    }
  def self.convert(input)
    # check valid size
    grid = input.split("\n")
    raise ArgumentError if grid.length % 4 != 0
    grid.each do |row|
      raise ArgumentError if row.length % 3 != 0
    end

    # ocr here
    if grid[0].length > 3 && grid.length == 4
      new_input = [grid[0][0...3],grid[1][0...3],grid[2][0...3],grid[3][0...3]].join("\n")
      rest_input = [grid[0][3...],grid[1][3...],grid[2][3...],grid[3][3...]].join("\n")
      return convert(new_input) + convert(rest_input)
    elsif grid.length > 4
      return convert(grid[0...4].join("\n")) + "," +convert(grid[4...].join("\n")) 
    else
      return OCR_NUMBERS[input] != nil ? OCR_NUMBERS[input].to_s : "?"
    end


  end
end
