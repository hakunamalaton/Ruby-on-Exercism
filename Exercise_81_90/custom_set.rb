=begin
Write your code for the 'Custom Set' exercise in this file. Make the tests in
`custom_set_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/custom-set` directory.
=end
class CustomSet
    attr_reader :set
    def initialize(array)
      @set = array.uniq
    end
  
    def empty?
      @set.empty?
    end
  
    def member?(element)
      @set.include? element
    end
  
    def subset?(ano_set)
      (ano_set.set - @set).length == ano_set.set.length - @set.length
    end

    def disjoint?(ano_set)
      (ano_set.set + @set).uniq.length == ano_set.set.length + @set.length
    end

    def add(ele)
      return self if @set.include? ele
      @set += [ele]
      self
    end

    def intersection(ano_set)
      @set = @set.intersection(ano_set.set)
      self
    end

    def difference(ano_set)
      @set = @set - ano_set.set
      self
    end

    def union(ano_set)
      @set = (@set + ano_set.set).uniq
      self
    end

    def ==(ano_set)
      ano_set.set.sort == @set.sort
    end

  
  end