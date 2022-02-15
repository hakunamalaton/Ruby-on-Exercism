=begin
Write your code for the 'Simple Linked List' exercise in this file. Make the tests in
`simple_linked_list_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/simple-linked-list` directory.
=end
class Element
  attr_accessor :datum, :next
  def initialize(datum)
    @datum = datum
    @next = nil
  end
end

class SimpleLinkedList
def initialize(arr = nil)
  @header = nil
  if arr
    @array = []
    arr.each {
      |ele|
      self.push(Element.new(ele))
    }
  else
    @array = []
  end
end

def push(ele)
  if @header == nil 
    @header = ele
  else
    temp = @header
    while temp.next != nil
      temp = temp.next
    end
    temp.next = ele
  end
  @array += [ele]
  self
end

def pop
  if @header == nil
    return nil
  elsif @header.next == nil
    temp = @header
    @header = nil
    @array = @array[...-1]
    return temp
  else
    temp = @header
    del_ele = @header
    while temp.next != nil
      del_ele = temp
      temp = temp.next
    end
    del_ele.next = nil
    @array = @array[...-1]
    return temp
  end
end

def to_a
  @array.reverse.map {
    |ele|
    ele.datum
  }
end

def reverse!
  arr = @array
  @array = []
  arr.reverse.each_cons(2) {
    |a,b|
    a.next = b
    @array += [a]
  }
  @array += [arr[0]]
  @array[-1].next = nil
  @header = @array[0]
  self
end
end

first = Element.new(1)
second = Element.new(2)
third = Element.new(3)
list = SimpleLinkedList.new
list.push(first).push(second).push(third)

p list.reverse!.to_a
