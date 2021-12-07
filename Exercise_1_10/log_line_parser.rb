class LogLineParser
    def initialize(line)
      @line = line
      @arr = line.split(':')
    end
  
    def message
      @arr[1].strip
    end
  
    def log_level
      @arr[0][1...-1].downcase
    end
  
    def reformat
      message + ' (' + log_level + ')'
    end
  end

  
  puts LogLineParser.new('[INFO]: Operation completed').reformat
