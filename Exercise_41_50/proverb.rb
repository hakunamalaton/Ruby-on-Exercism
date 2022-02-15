=begin
Write your code for the 'Proverb' exercise in this file. Make the tests in
`proverb_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/proverb` directory.
=end
class Proverb
    def initialize(*list, qua)
      @list = list
      if qua.is_a? Hash
        @qua = qua
      else
        @qua = nil 
        @list << qua
      end
    end
  
    def to_s 
      @proverb = ""
      for i in (0...(@list.length-1))
        @proverb << "For want of a #{@list[i]} the #{@list[i+1]} was lost.\n"
      end
      if @qua != nil
        @proverb << "And all for the want of a #{@qua[:qualifier]} #{@list[0]}."
      else
        @proverb << "And all for the want of a #{@list[0]}."
      end
    end
  end

chain = %w[nail shoe horse rider message battle kingdom]
#proverb = Proverb.new(*chain, qualifier: 'horseshoe')
proverb = Proverb.new('nail', 'shoe')
p proverb.to_s