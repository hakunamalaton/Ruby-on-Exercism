=begin
Write your code for the 'Simple Cipher' exercise in this file. Make the tests in
`simple_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/simple-cipher` directory.
=end
class Cipher
    attr_accessor :key
    def initialize(key=nil)
      raise ArgumentError if key != nil and key == key.gsub(/[^A-Z0-9 ]/,"")
      @key = key == nil ? 'lamthiento' : key
    end
  
    def encode(plain)
      res = ""
      @key.chars.each_with_index {
        |char,index|
        res += char.ord + plain[index].ord - 97 > 122 ? (char.ord + plain[index].ord-123).chr : (char.ord.to_i + plain[index].ord.to_i - 97).chr
      }
      res
    end
  
    def decode(cipher)
      res = ""
      @key.chars.each_with_index {
        |char,index|
        res += - char.ord + cipher[index].ord >= 0 ? (-char.ord + cipher[index].ord + 97).chr : (-char.ord + cipher[index].ord + 123).chr
      }
      res
    end
  end