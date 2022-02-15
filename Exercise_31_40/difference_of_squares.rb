class Squares
    def initialize(num)
      @num = num
    end
  
    def square_of_sum
      (1..@num).sum ** 2
    end

    def sum_of_squares
        (1..@num).map {
            |ele|
            ele**2
        }.sum
    end

    def difference
        square_of_sum - sum_of_squares
    end
  end



  p Squares.new(5).sum_of_squares