class WordProblem
    def initialize(str)
      @wordy = str.gsub("plus","+").gsub("minus","-").gsub("multiplied by","*").gsub("divided by","/").split[2..]
      p str.gsub("plus","+").gsub("minus","-")
    end
    def answer
      while @wordy.length >= 3
        a = @wordy[0].to_i
        b = @wordy[2].to_i
        case @wordy[1]
          when '+' then @wordy[0..2] = (a + b).to_s
          when '-' then @wordy[0..2] = (a - b).to_s
          when '*' then @wordy[0..2] = (a * b).to_s
          when '/' then @wordy[0..2] = (a / b).to_s
        end
      end
      @wordy[0].to_i
    end
  end

  problem = WordProblem.new("What is 1 plus 1?")
# problem.answer