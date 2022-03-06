=begin
Write your code for the 'Diamond' exercise in this file. Make the tests in
`diamond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/diamond` directory.
=end
class Diamond
  def self.make_diamond(letter)
    index = [*'A'..'Z'].index(letter)
    quantity_per_row = 2*index + 1
    return "A\n" if index == 0
    result = ""
    result += " "*index + "A" + " "*index + "\n"
    [*'A'..'Z'][1..index].each_with_index do |letter,idx|
      idx += 1
      result += " "*(index-idx) + letter + " "*idx + letter \
      + " "*(index-idx) + "\n"
    end
    result += " "*index + "A" + " "*index + "\n"
  end
end

answer = Diamond.make_diamond('C')
p answer