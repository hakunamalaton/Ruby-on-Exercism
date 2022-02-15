class Phrase
  def initialize(text)  
    @text = text
  end

  def word_count
    count = Hash.new(0)
    word_arr = @text.gsub(/[^A-Za-z0-9']/," ").split
    word_arr.each {
      |word|
      word = word[1..] if word[0] == '\''
      word = word[...-1] if word[-1] == '\''
      count[word.downcase] +=1
    }
    return count
  end
end