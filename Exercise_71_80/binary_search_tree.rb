=begin
Write your code for the 'Binary Search Tree' exercise in this file. Make the tests in
`binary_search_tree_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/binary-search-tree` directory.
=end
class Node
    attr_reader :data
    attr_accessor :left, :right
    def initialize(data)
      @data = data
      @left = nil
      @right = nil
    end
  end

  class Bst
    def initialize(data)
      @root = Node.new(data)
      @arr_data = []
    end

    def insert(data)
        tmp = @root
        while tmp != nil
            if tmp.data < data
                if tmp.right == nil
                    tmp.right = Node.new(data) 
                    break
                else
                    tmp = tmp.right
                end
            else
                if tmp.left == nil
                    tmp.left = Node.new(data) 
                    break
                else
                    tmp = tmp.left
                end
            end
        end
    end

    def data
        @root.data
    end

    def left
        @root.left
    end

    def right
        @root.right
    end

    def traverse(tmp)
        traverse(tmp.left) if tmp.left != nil
        @arr_data << tmp.data
        traverse(tmp.right) if tmp.right != nil
    end
    def each
        traverse(@root)
        if block_given?
          @arr_data.each {
            |ele|
            yield ele
          }
        else
          @arr_data.each
        end
    end
  end