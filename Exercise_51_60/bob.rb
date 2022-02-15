=begin
Write your code for the 'Bob' exercise in this file. Make the tests in
`bob_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/bob` directory.
=end
class Bob
    def self.hey(remark)
      if remark.strip[-1] == '?'
        format_remark = remark.gsub(/[^A-Za-z]/,"")
        if format_remark.upcase != format_remark or format_remark == "" 
          return "Sure."
        else
          return "Calm down, I know what I'm doing!"
        end
      end
      f_remark = remark.gsub(/[^A-Za-z]/,"")
      if f_remark == f_remark.upcase and f_remark.length > 0
        return "Whoa, chill out!"
      end
      remark = remark.gsub(/[^A-Za-z0-9]/,"")
      if remark == ""
        return "Fine. Be that way!"
      end
      return "Whatever."
    end
  end


  remark = "1, 2, 3"
  p Bob.hey(remark)