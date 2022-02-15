=begin
Write your code for the 'Transpose' exercise in this file. Make the tests in
`transpose_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/transpose` directory.
=end
class Transpose
  def self.transpose(input)
    unless input.include? "\n"
      return input.chars.join("\n")
    else
      my_ar = input.split("\n")
      i = 0
      trans = []
      while i < input.length
      text = ""
      flag = 0
      my_ar.each {
          |ele|
          if ele[i] == nil 
            flag += 1
          else
            text << " " * flag if flag > 0
            text << ele[i]
            flag = 0
          end
      }
      trans << text
      i += 1
      end
      trans.join("\n").strip
    end
  end
end



input = "The longest line.\nA long line.\nA longer line.\nA line."
Transpose.transpose(input)

"T"
"EE"
"AAA"
"SSSS"
"EEEEE"
"RRRRRR"