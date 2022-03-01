=begin
Write your code for the 'Complex Numbers' exercise in this file. Make the tests in
`complex_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/complex-numbers` directory.
=end
class ComplexNumber
    attr_accessor :real, :imaginary
    def initialize(real, imaginary)
      @real = real
      @imaginary = imaginary
    end
  
    def *(complex_num_nd)
      real = @real*complex_num_nd.real-@imaginary*complex_num_nd.imaginary
      imaginary = @real*complex_num_nd.imaginary+@imaginary*complex_num_nd.real
      ComplexNumber.new(real,imaginary)
    end
  
    def ==(complex_num_nd)
      @real == complex_num_nd.real and @imaginary == complex_num_nd.imaginary
    end
  
    def +(complex_num_nd)
    ComplexNumber.new(@real+complex_num_nd.real,complex_num_nd.imaginary+@imaginary)
    end
  
    def -(complex_num_nd)
    ComplexNumber.new(@real-complex_num_nd.real,-complex_num_nd.imaginary+@imaginary)
    end
  
    def /(complex_num_nd)
      a = @real
      b = @imaginary
      c = complex_num_nd.real
      d = complex_num_nd.imaginary
      real = (a * c + b * d).to_f/(c**2 + d**2)
      imag = (b * c - a * d).to_f/(c**2 + d**2)
      ComplexNumber.new(real,imag)
    end
  
    def abs
      Math.sqrt(@real**2 + @imaginary**2)
    end
  
    def conjugate
      ComplexNumber.new(@real,-@imaginary)
    end
  
    def exp
      a = (Math::E**@real)
      real = (Math.cos(@imaginary)*a - (Math.cos(@imaginary)*a).round).abs < 0.1 ? (Math.cos(@imaginary)*a).round : Math.cos(@imaginary)*a
      imag = (Math.sin(@imaginary)*a - (Math.sin(@imaginary)*a).round).abs < 0.1 ? (Math.sin(@imaginary)*a).round : Math.sin(@imaginary)*a
      ComplexNumber.new(real,imag)
    end
  end