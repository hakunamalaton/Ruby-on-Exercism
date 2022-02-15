=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

# function tr(str1, str2) to optimize
class Complement
    def self.of_dna(dna)
      dna.split("").map{      # .chars
        |letter|
        case letter
          when "G" then letter = "C"
          when "C" then letter = "G"
          when "T" then letter = "A"
          when "A" then letter = "U"
        end
      }.join
    end
  end