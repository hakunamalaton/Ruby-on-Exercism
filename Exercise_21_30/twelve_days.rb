=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end
class TwelveDays
    def self.song
      @lyrics = ""
      day_obj = {
        first: "a Partridge in a Pear Tree",
        second: "two Turtle Doves",
        third: "three French Hens",
        fourth: "four Calling Birds",
        fifth: "five Gold Rings",
        sixth: "six Geese-a-Laying",
        seventh: "seven Swans-a-Swimming",
        eighth: "eight Maids-a-Milking",
        ninth: "nine Ladies Dancing",
        tenth: "ten Lords-a-Leaping",
        eleventh: "eleven Pipers Piping",
        twelfth: "twelve Drummers Drumming",
      }
      day_obj.each {
        |day, text|
        if @lyrics.rindex(":")
            if day.to_s == "second" 
                remain = " and" + @lyrics[@lyrics.rindex(":")..][1..]
            else 
                remain = @lyrics[@lyrics.rindex(":")..][1..]
            end
        end 
        @lyrics << "On the #{day.to_s} day of Christmas my true love gave to me:"
        if @lyrics.rindex(":") < 100
            @lyrics[@lyrics.rindex(":")+1,1]  = " " + text + ".\n\n"
        elsif day.to_s == "twelfth"
          @lyrics[@lyrics.rindex(":")+1,1]  = " " + text + "," + remain[..-2]
        else
            @lyrics[@lyrics.rindex(":")+1,1]  = " " + text + "," + remain
        end
      }
      @lyrics
    end
  end


# text = "lam thien toan"
# text[3,1] = "abc"
# p text