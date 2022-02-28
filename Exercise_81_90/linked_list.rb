=begin
Write your code for the 'Linked List' exercise in this file. Make the tests in
`linked_list_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/linked-list` directory.
=end
class Node
    attr_accessor :data, :next, :prev
    def initialize(data)
      @data = data
      @next = nil
      @prev = nil
    end
  end
  
  class Deque
    def initialize
      @head = nil
      @tail = nil
    end
  
    def push(data)
      pNew = Node.new(data)
      unless @head
        @head = @tail = pNew
      else
        @tail.next = pNew
        pNew.prev = @tail
        @tail = pNew
      end
    end
  
    def pop
      data = @tail.data
      @tail = @tail.prev
      if @tail
        @tail.next = nil
      else
        @head = @tail = nil
      end
      data
    end
  
    def unshift(data)
      pNew = Node.new(data)
      unless @head
        @head = @tail = pNew
      else
        @head.prev = pNew
        pNew.next = @head
        @head = pNew
      end
    end
  
    def shift
      data = @head.data
      @head = @head.next
      if @head
        @head.prev = nil
      else
        @head = @tail = nil
      end
      data
    end
  end