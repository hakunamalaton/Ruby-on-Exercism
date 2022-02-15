=begin
Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
`run_length_encoding_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/run-length-encoding` directory.
=end
class RunLengthEncoding
    def self.encode(str)
      return '' if str == ''
      encode_str = ""
      run_char = str[0]
      count = 0
      str.chars.each {
        |char|
        if run_char != char
          encode_str += count == 1 ? run_char : count.to_s + run_char
          run_char = char
          count = 1
        else
          count += 1        
        end
      }
      encode_str += count == 1 ? run_char : count.to_s + run_char
      encode_str
    end
  
    def self.decode(str)
      return '' if str == ''
      run_char = str[0]
      count = 0
      decode_str = ""
      str.chars.each {
        |char|
        if char.ord >= 48 and char.ord <= 57
          count = count*10 + char.to_i
          p count
        else
          decode_str += count != 0 ? char * count : char
          count = 0
        end
      }
      decode_str
    end
  end


input = '10W'
#output = 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'
p RunLengthEncoding.decode(input)