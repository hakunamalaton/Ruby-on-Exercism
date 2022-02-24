=begin
Write your code for the 'Pig Latin' exercise in this file. Make the tests in
`pig_latin_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pig-latin` directory.
=end
class PigLatin
    def self.translate(s)
      if s.chars.include? " "
        return s.split.map {
          |word|
          translate(word)
        }.join(" ")
      end
      if ['a','e','i','o','u'].include? s[0] or ['xr','yt'].include? s[0..1]
        return s + "ay"
      end
      if s[0] == 'y' 
        return s[1..-1] + 'yay'
      end
      br = ""
      s.chars.each {
        |char|
        br += char unless ['a','e','i','o','u','y'].include? char
        break if ['a','e','i','o','u','y'].include? char
      }
      if br[-1] == 'q' and s[br.length] == 'u'
        return s[br.length+1..-1] + br + "uay"  
      end
      return s[br.length..-1] + br + "ay"
    end
  end