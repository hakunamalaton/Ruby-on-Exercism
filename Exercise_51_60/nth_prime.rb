class Prime
    def self.nth(number)
        raise ArgumentError if number <= 0
        i = 2
        while number >= 0
            if isPrime? i
                return i if number - 1 == 0
                number -= 1
            end
            i += 1
        end
      end
  
    private
    def self.isPrime?(num)
        return false if num < 2
      limit = Math.sqrt(num).floor
      for i in (2..limit)
        return false if num % i == 0
      end
      return true
    end
  end

  p Prime.nth(10_001)