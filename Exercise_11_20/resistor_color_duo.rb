=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end
class ResistorColorDuo
    @@res_map_value = {
      black: 0,
      brown: 1,
      red: 2,
      orange: 3,
      yellow: 4,
      green: 5,
      blue: 6,
      violet: 7,
      grey: 8,
      white: 9,
    }
    def self.value(resarr)
      mapped_value = 0 
      resarr[0..1].each {
        |res|
        mapped_value = mapped_value*10 + @@res_map_value[res.to_sym] #map(&res_map_value)
      }
      mapped_value
    end
  end