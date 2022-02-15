=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end


# define_method param name, block
class SpaceAge
    def initialize(time)
      @time = time*1.0/31557600 
    end
  
    def on_earth 
      (@time).round(2)
    end
    def on_mercury 
        (@time/0.2408467).round(2)
      end
    def on_venus 
      (@time/0.61519726).round(2)
    end
      def on_mars 
      (@time/1.8808158).round(2)
    end
        def on_jupiter 
      (@time/11.862615).round(2)
    end
          def on_saturn 
      (@time/29.447498).round(2)
    end
            def on_uranus 
      (@time/84.016846).round(2)
    end
        def on_neptune 
      (@time/164.79132).round(2)
    end
  end