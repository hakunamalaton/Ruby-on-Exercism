class PerfectNumber
    def self.classify(number)
      raise RuntimeError if number < 1
      sum_result = [*1..(number/2)].select {
        |factor|
        number % factor == 0
      }.sum
      if sum_result == number
        return 'perfect'
      elsif sum_result > number
        return 'abundant'
      else
        return 'deficient'
      end
    end
  end