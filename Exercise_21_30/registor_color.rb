class ResistorColor
    COLORS = 123456789
    @color_mapping = {
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
    def self.color_code(color) 
      @color_mapping[color.to_s]
    end
end

