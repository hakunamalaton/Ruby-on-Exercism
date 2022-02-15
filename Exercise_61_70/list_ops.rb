=begin
Write your code for the 'List Ops' exercise in this file. Make the tests in
`list_ops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/list-ops` directory.
=end
class ListOps
    def self.arrays(arr)
      res = 0
       while arr != []
          res += 1
         arr = arr[1..]
       end
      res
    end
  
    def self.reverser(arr)
      length = arrays(arr)
      i = 0
      while i < length / 2
        arr[i],arr[-i-1] = arr[-i-1],arr[i]
        i += 1
      end
      arr
    end
  
    def self.concatter(arr1, arr2)
      return arr1 + arr2
    end
  
    def self.mapper(arr)
      arr.each_with_index {
        |val,index|
        arr[index] = yield val
      }
      arr
    end
  
    def self.filterer(arr)
      arr.each {
        |val|
        arr.delete(val) unless yield val
      }
      arr
    end
  
    def self.sum_reducer(arr)
      res = 0
      for i in arr
        res += i
      end
      res
    end
  
    def self.factorial_reducer(arr)
      res = 1
      for i in arr
        res *= i
      end
      res
    end
  end