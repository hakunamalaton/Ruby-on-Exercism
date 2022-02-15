class BoutiqueInventory
    def initialize(items)
      @items = items
    end
    def item_names
      @items.map {|ele|
        ele[:name]
      }.sort
    end
    def cheap
      @items.select { |ele|
        ele[:price] < 30      
      }
    end
    def out_of_stock
      @items.select { |ele|
        ele[:quantity_by_size].empty?     
      }
    end
    def stock_for_item(name)
      @items.select { |ele|
        ele[:name] == name     
      }.map { |ele|
        ele[:quantity_by_size]
      }[0]
    end
    def total_stock
        num = 0
        @items.each { |ele|
          ele[:quantity_by_size].each_value { |v|
          num += v
          }      
        }
        return num
      end
    private
    attr_reader :items
  end
  