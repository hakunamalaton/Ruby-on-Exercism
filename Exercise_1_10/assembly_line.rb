class AssemblyLine
    def initialize(speed)
      @speed = speed
    end
    def production_rate_per_hour
      if @speed >= 1 && @speed <=4
        return @speed * 221
      elsif @speed >= 5 && @speed <=8
        return @speed * 221 * 90.0 / 100
      elsif @speed == 9
        return @speed * 221 * 80.0 / 100 
      else
        return @speed * 221 * 77.0 / 100 
      end
    end
    def working_items_per_minute
      (production_rate_per_hour/60).to_i
    end
  end
  