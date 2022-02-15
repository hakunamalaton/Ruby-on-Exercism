=begin
Write your code for the 'Binary Search' exercise in this file. Make the tests in
`binary_search_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/binary-search` directory.
=end
class BinarySearch
    def initialize(arr)  
      @arr = arr
    end
  
    def search_for(ele)
      return binary_search(ele,0,@arr.length-1)
    end
  
    private
  
    def binary_search(ele,first,last)
      return nil if last < first
      middle = (last-first)/2 + first
      if @arr[middle] == ele 
        return middle
      elsif @arr[middle] > ele 
        return binary_search(ele,first,middle-1)
      else
        return binary_search(ele,middle+1,last)
      end
    end
  end