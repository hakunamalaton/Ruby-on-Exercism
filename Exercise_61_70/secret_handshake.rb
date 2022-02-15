=begin
Write your code for the 'Secret Handshake' exercise in this file. Make the tests in
`secret_handshake_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/secret-handshake` directory.
=end
class SecretHandshake
    HANDSHAKE = {
        0 => 'wink',
        1 => 'double blink',
        2 => 'close your eyes',
        3 => 'jump',
    }
    def initialize(decimal)
      @binary = decimal.to_i.digits(2).join
    end
  
    def commands
      res = []
      @binary.chars.each_with_index {
        |char, index|
        if char == '1' 
          if index != 4 
            res += [HANDSHAKE[index]]
          else
            res.reverse!
          end
        end
      }
      res
    end
  end