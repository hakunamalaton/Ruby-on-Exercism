class KnapSack

  def initialize(capacity, items)
    @capacity = capacity
    # quantity, weight, value
    @items = items
  end

  def execute
    max_value(@capacity, @items, 0)
  end

  private 

  def max_value(capacity, items, ase)
    # puts "#{items} in this case #{ase}"
    if items.length == 0
      return 0
    end

    if items.length == 1 and items[items.keys[0]][0] == 1
      return items[items.keys[0]][1] <= capacity ? items[items.keys[0]][2] : 0
    end

    # decrease items by 1 element
    new_items = {}
    items.clone.each do |k,v|
      new_items[k] = v.clone
    end
    
    new_items[new_items.keys[0]][0] -= 1 
    new_items.delete(new_items.keys[0]) if new_items[new_items.keys[0]][0] == 0

    items[items.keys[0]][0] -= 1 
    weight_of_processing_item = items[items.keys[0]][1] 
    value_of_processing_item = items[items.keys[0]][2] 
    items.delete(items.keys[0]) if items[items.keys[0]][0] == 0


    # puts items.object_id
    # puts items
    # puts new_items.object_id
    # puts new_items
    # return 
    case_1 = 0
    case_2 = 0
    
    if capacity >= weight_of_processing_item
        case_1 = max_value(capacity - weight_of_processing_item, items, 1) + value_of_processing_item
    end

    case_2 = max_value(capacity, new_items, 2)
    # puts "case 1: #{case_1}, case 2: #{case_2}, new_items: #{items}"
    return [case_1, case_2].max

  end
end



# def foo(hash)
#   h1 = hash.clone
#   h1.delete(:A)
#   puts hash
# end

# hash = {
#     A: 1,
#     B: 2
# }
# foo(hash)