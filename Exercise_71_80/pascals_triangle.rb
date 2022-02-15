class Triangle
    attr_accessor :rows
    def initialize(row)
      if row == 1
        @rows = [[1]]
      elsif row == 2
        @rows = [[1],[1,1]]
      else
        @rows = [[1],[1,1]]
        tri_row_th = []
        [*3..row].each {
          |row_th|
          @rows[-1].each_cons(2) {
            |a,b|
            tri_row_th += [a+b]
          }
          tri_row_th = [1] + tri_row_th + [1]
          @rows += [tri_row_th]
        }
      end
    end
  end


  triangle = Triangle.new(3)
  p triangle.rows