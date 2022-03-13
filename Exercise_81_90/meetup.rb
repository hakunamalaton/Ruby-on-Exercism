=begin
Write your code for the 'Meetup' exercise in this file. Make the tests in
`meetup_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/meetup` directory.
=end
require 'date'

class Meetup
    TEENTH = [*13..19]
    DAYS = {
        monday: 1,
        tuesday: 2,
        wednesday: 3,
        thursday: 4,
        friday: 5,
        saturday: 6,
        sunday: 7
    }
    def initialize(month, year)
      @month = month
      @year = year
    end
  
    def day(day_in_week, appear)
      begin_date = Date.parse("#{@year}-#{@month}-01")
      begin_date = DAYS[day_in_week] - begin_date.cwday >= 0 ? begin_date + DAYS[day_in_week] - begin_date.cwday : \
      begin_date + DAYS[day_in_week] - begin_date.cwday + 7

      case appear
        when :first 
            return begin_date
        when :second
            return begin_date + 7
        when :third
            return begin_date + 14
        when :fourth
            return begin_date + 21
        when :teenth
            while !TEENTH.include? begin_date.mday
                begin_date += 7
            end 
            return begin_date
        when :last
            start = Date.parse("#{@year}-#{@month}-01")
            start = start.mon == 12 ? 1 : start.next_month(1).mon
            while (begin_date + 7).mon != start
                begin_date += 7
            end 
            return begin_date
      end
      
    end
  end