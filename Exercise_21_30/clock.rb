=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end
class Clock
    attr_accessor :hour, :minute, :time
    def initialize(input_time)
      @hour = input_time[:hour] == nil ? 0 : input_time[:hour]
      @minute = input_time[:minute] == nil ? 0 : input_time[:minute]
      @time = ""
      calculate
    end
    def calculate
        @total_minute = @hour * 60 + @minute 
        if @total_minute > 0
            translate
            to_string
        elsif @total_minute < 0
            @total_minute = - @total_minute
            translate
            if @minute == 0
                @hour = 24 - @hour
            else
                @hour = 23 - @hour
                @minute = 60 - @minute
            end
            to_string
        else
            @time << "00:00"
        end
    end

    def translate
        @minute = @total_minute % 60
        @hour = @total_minute / 60 % 24
    end
    def to_string
        if @hour.to_s.length == 1
            @time << "0" << @hour.to_s
        else
            @time << @hour.to_s
        end
        if @minute.to_s.length == 1
            @time << ":0" << @minute.to_s
        else
            @time << ":" <<@minute.to_s
        end
    end
    def to_s
        @time
    end
    def +(clock_obj)
        @hour += clock_obj.hour
        @minute += clock_obj.minute
        @time = ""
        calculate
    end
    def -(clock_obj)
        @hour -= clock_obj.hour
        @minute -= clock_obj.minute
        @time = ""
        calculate
    end
    def ==(clock_obj)
        return true if @time == clock_obj.time
        false 
    end
  end


clock1 = Clock.new(hour: 15, minute: 37)
clock2 = Clock.new(hour: 15, minute: 37)
p clock1 == clock2