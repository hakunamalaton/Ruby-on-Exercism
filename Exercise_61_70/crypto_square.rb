=begin
Write your code for the 'Crypto Square' exercise in this file. Make the tests in
`crypto_square_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/crypto-square` directory.
=end
class Crypto
    def initialize(plaintext)
      @normal_text = plaintext.gsub(/[^A-Za-z0-9]/,"").downcase
    end
  
    def ciphertext
      c = Math.sqrt(@normal_text.length).ceil
      r = c*(c-1) >= @normal_text.length ? c-1 : c
      @normal_text += " "*(c*r-@normal_text.length)
      @normal_text.chars.each_slice(c).map(&:to_a)
    end
  end