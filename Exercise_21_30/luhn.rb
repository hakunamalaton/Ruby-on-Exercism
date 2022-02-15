class Luhn
    def self.valid?(input)
      if input.match?(/[^0-9 ]/) or input.strip.length == 1
        return false
      end
      input = input.gsub(/[- ]/,"")
      value = 0 
      input = input.reverse if input.length % 2 == 0
      for i in 0...input.length
        value += (i%2).zero? ? input[i].to_i : (input[i].to_i * 2 > 9 ? input[i].to_i*2 - 9 : input[i].to_i * 2)
      end
    return (value%10).zero? ? true : false
    end
  end