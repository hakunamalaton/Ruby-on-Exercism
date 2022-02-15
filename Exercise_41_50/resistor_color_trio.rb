=begin
Write your code for the 'Resistor Color Trio' exercise in this file. Make the tests in
`resistor_color_trio_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-trio` directory.
=end
class ResistorColorTrio
    COLOR_MAPPING = {
      "black" => 0,
      "brown" => 1,
      "red" => 2,
      "orange" => 3,
      "yellow" => 4,
      "green" => 5,
      "blue" => 6,
      "violet" => 7,
      "grey" => 8,
      "white" => 9
    }
    def initialize(arr_color)
      @color = arr_color
    end
  
    def label 
      res = @color[...-1].map(&COLOR_MAPPING).join
      if res.length < 2
        raise ArgumentError
      end

      res << "0" * COLOR_MAPPING[@color[-1]]
      if res.to_i % 1000 == 0
        return "Resistor value: #{res.to_i/1000} kiloohms" 
      else
        return "Resistor value: #{res.to_i} ohms" 
      end
    end
  end


p ResistorColorTrio.new(%w[yellow violet yellow]).label