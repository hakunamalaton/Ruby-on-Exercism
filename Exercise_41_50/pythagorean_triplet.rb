=begin
Write your code for the 'Pythagorean Triplet' exercise in this file. Make the tests in
`pythagorean_triplet_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pythagorean-triplet` directory.
=end

#combination
class Triplet
    def initialize(a,b,c)
      @e1 = a
      @e2 = b
      @e3 = c
    end
  
    def sum 
      @e1 + @e2 + @e3
    end
  
    def product
      @e1 * @e2 * @e3
    end
  
    def pythagorean?
      @e1 ** 2 + @e2 ** 2 == @e3 ** 2
    end
  
    def self.where(factor)
      ar = []
      if factor[:min_factor] == nil 
        factor[:min_factor] = 2
      end
  
      ar = []
      [*factor[:min_factor]..factor[:max_factor]].each {
        |c|
        [*factor[:min_factor]..factor[:max_factor]].each {
          |b|
          [*factor[:min_factor]..factor[:max_factor]].select {
            |a|
            if a**2 + b**2 == c**2 && a < b && b < c
              if factor[:sum] == nil
                ar += [a,b,c]
              else
                ar += [a,b,c] if a + b + c == factor[:sum]
              end
            end
          }
        }
      }
      p ar
    end
    
  end

  triplets = Triplet.where(max_factor: 10)
  products = triplets.map(&:product).sort
  #p products