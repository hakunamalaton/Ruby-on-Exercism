=begin
Write your code for the 'Robot Simulator' exercise in this file. Make the tests in
`robot_simulator_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/robot-simulator` directory.
=end
class Robot
    def initialize 
      @dir = nil #Symbol
      @x = 0
      @y = 0
    end
  
    def orient(direction)
      raise ArgumentError unless %i[east west north south].include? direction
      @dir = direction #symbol
    end
  
    def bearing
      @dir
    end
  
    def turn_right
      index = %i[north east south west].index(@dir)
      @dir = index == 3 ? :north : %i[north east south west][index+1]
    end
  
    def turn_left
      index = %i[north east south west].index(@dir)
      @dir = index == 0 ? :west : %i[north east south west][index-1]
    end
  
    def at(x,y)
      @x = x
      @y = y
    end
  
    def coordinates
      [@x,@y]
    end
  
    def advance
      case @dir 
        when :north then at(@x,@y+1)
        when :south then at(@x,@y-1)
        when :east then at(@x+1,@y)
        when :west then at(@x-1,@y)
      end
    end
  end
  
  class Simulator
    def initialize
      @ins = []
    end
  
    def instructions(ins_str)
      ins_str.each_char {
        |char|
        case char
          when 'R' then @ins += [:turn_right]
          when 'L' then @ins += [:turn_left]
          else @ins += [:advance]
        end
      }
      @ins
    end
  
    def place(robot,x,y,direction)
      @robot = robot
      @robot.at(x[:x],y[:y])
      @robot.orient(direction[:direction])
    end
  
    def evaluate(robot,ins_str)
      instructions(ins_str)
      @ins.each {
        |instruction|
        case instruction
          when :turn_right then @robot.turn_right
          when :turn_left then @robot.turn_left
          when :advance then @robot.advance
        end
      }
      robot = @robot
    end
  end


simulator = Simulator.new
robot = Robot.new
simulator.place(robot, x: -2, y: 1, direction: :east)
#simulator.evaluate(robot, 'RLAALAL')