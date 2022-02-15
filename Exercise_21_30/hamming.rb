=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end
class Hamming
    def self.compute(dna1, dna2)
      return 0 if dna1 == dna2
      raise ArgumentError if dna1.length != dna2.length
      res = 0
      for i in 0...dna1.length
        if dna1[i] != dna2[i]
          res += 1
        end
      end
      res 
    end
  end