class Brackets
    def self.paired?(str)
      stack = []
      str = str.gsub(/[^\(\)\[\]\{\}]/,"")
      while str.length > 0
      if ['[','(','{'].include? str[0]
        stack += [str[0]]
      else
        if str[0] == ')'
            return false if stack[-1] != '('
        elsif str[0] == ']'
            return false if stack[-1] != '['
        else
            return false if stack[-1] != '{'
        end
        stack = stack[...-1]
      end
      str = str[1..]
      end
      return stack.empty? ? true : false
    end
  end


p  Brackets.paired?('(((185 + 223.85) * 15) - 543)/2')