=begin
Write your code for the 'Rotational Cipher' exercise in this file. Make the tests in
`rotational_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rotational-cipher` directory.
=end
class RotationalCipher
    @@downcase = [*'a'..'z']
    @@upcase = [*'A'..'Z']
    def self.rotate(str, key)
      str.chars.map do |letter|
        if @@downcase.include? letter 
          change(letter,key,1)
        elsif @@upcase.include? letter
          change(letter,key,0)
        else
          letter
        end
      end.join
    end
  
    private
    def self.change(letter,key,letter_case)
      if letter_case == 1
        key = key % 26 if key >= 26
        idx = @@downcase.index(letter)
        if key + idx < 26
          return @@downcase[key+idx]
        else
          return @@downcase[idx+key-26]
        end
      else
        key = key % 26 if key >= 26
        idx = @@upcase.index(letter)
        if key + idx < 26
          return @@upcase[key+idx]
        else
          return @@upcase[idx+key-26]
        end
      end
    end
  end