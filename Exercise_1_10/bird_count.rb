class BirdCount
    def self.last_week
      @last_week = [0,2,5,3,7,8,4]
    end
  
    def initialize(birds_per_day)
      @birds_arr = birds_per_day
    end
  
    def yesterday
      @birds_arr[-2]
    end
  
    def total
      @birds_arr.sum
    end
  
    def busy_days
      (@birds_arr.select {|bird| bird >= 5}).length
    end
  
    def day_without_birds?
      @birds_arr.include?(0) ? true:false 
    end
  end