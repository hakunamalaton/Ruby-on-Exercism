=begin
Write your code for the 'Atbash Cipher' exercise in this file. Make the tests in
`atbash_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/atbash-cipher` directory.
=end
class Atbash
    def self.encode(plaintext)
      plaintext = plaintext.gsub(/[^A-Za-z0-9]/,"").downcase
      plaintext = code(plaintext)
      plaintext = plaintext.gsub(/...../) {
        |s|
        s += " "
      }
      plaintext.strip
    end
  
    def self.decode(ciphertext)
      ciphertext = ciphertext.gsub(" ","")
      code(ciphertext)
    end
  
    private
    def self.code(str)
      str.tr('abcdefghijklmnopqrstuvwxyz','zyxwvutsrqponmlkjihgfedcba')
    end
  end