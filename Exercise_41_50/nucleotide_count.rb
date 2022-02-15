=begin
Write your code for the 'Nucleotide Count' exercise in this file. Make the tests in
`nucleotide_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nucleotide-count` directory.
=end
class Nucleotide
    attr_accessor :dna_arr
    def self.from_dna(dna_str)
      if (dna_str.split("").uniq - ['A','T','C','G']).empty?
        @dna_arr = dna_str.split("")
        return self
      else
        raise ArgumentError 
      end
    end
  
    def self.count(gen)
      @dna_arr.count(gen)
    end
  
    def self.histogram
      @hist = {
          'A' => @dna_arr.count('A'),
          'T' => @dna_arr.count('T'),
          'G' => @dna_arr.count('G'),
          'C' => @dna_arr.count('C'),
      }
    end
  end
