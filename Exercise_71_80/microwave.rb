=begin
Write your code for the 'Microwave' exercise in this file. Make the tests in
`microwave_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/microwave` directory.
=end
class Microwave
    def initialize(time)
      @time = time
    end

    def timer
      if @time.to_s.length == 1
        return "00:0#{@time}"
      else
        second = @time.to_s[-2..-1].to_i
        minute = @time.to_s[...-2].to_i 
        minute += second / 60 if second >= 60 
        second %= 60 if second >= 60 
        micro_timer = ""
        micro_timer += minute.to_s.length == 1 ? "0#{minute}" : minute.to_s
        micro_timer += ":"
        micro_timer += second.to_s.length == 1 ? "0#{second}" : second.to_s
        return micro_timer
      end
    end
  end 