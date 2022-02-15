=begin
Write your code for the 'ISBN Verifier' exercise in this file. Make the tests in
`isbn_verifier_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isbn-verifier` directory.
=end
class IsbnVerifier
    def self.valid?(string)
      isbn = string.gsub("-","")
       if isbn.match?("X")
         if isbn.index("X") != 9
           return false
         end
       elsif isbn.length != 10
         return false
       end
      sum = 0
      isbn.chars.reverse.each_with_index {
        |char,idx|
        sum += char != X ? char.to_i * (index+1) : 10
      }
      sum % 11 == 0
    end
  end


string = "3-598-21508-8"
p IsbnVerifier.valid?(string)