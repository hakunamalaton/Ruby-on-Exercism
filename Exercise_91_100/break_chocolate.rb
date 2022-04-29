class BreakSocola
  attr_accessor :four_direction

  def initialize(size,x,y)
    @four_direction = [x,y,size[0]-y-1,size[1]-x-1]
  end

  def play(direct,start)
    if direct.include? -1 
      direct = direct.map do |dir|
        dir = dir == -1 ? 0 : dir
      end
    end

    # base case
    if direct.count(0) == 4 || direct.count(0) == 3
      return start
    elsif direct.count(0) == 2
      if direct.uniq.length == 3
        return start
      else
        return !start
      end
    end
    # normal case
    # case 2: on the edge but the vertex
    result = []
    
    i = 1
    while direct[0] >= i
      result << play([direct[0]-i,direct[1],direct[2],direct[3]],!start)
      i += 1
    end

    i = 1
    while direct[1] >= i
      result << play([direct[0],direct[1]-i,direct[2],direct[3]],!start)
      i += 1
    end

    i = 1
    while direct[2] >= i
      result << play([direct[0],direct[1],direct[2]-i,direct[3]],!start)
      i += 1
    end

    i = 1
    while direct[3] >= i
      result << play([direct[0],direct[1],direct[2],direct[3]-i],!start)
      i += 1
    end
  
    
    if result.include? start
      return start
    else
      return !start
    end
    # case 3: not on the edge
  end
end

p 13145 >> 2