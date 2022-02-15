=begin
Write your code for the 'Sieve' exercise in this file. Make the tests in
`sieve_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sieve` directory.
=end
class Sieve
    require 'prime'
    def initialize(limit)
      @upperbound = limit
    end
  
    def primes
      [*2..@upperbound].select {
        |number|
        number.prime?
      }
    end
  end