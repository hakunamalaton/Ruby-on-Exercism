=begin
Write your code for the 'Two Bucket' exercise in this file. Make the tests in
`two_bucket_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/two-bucket` directory.
=end
class TwoBucket
  def initialize(size_bucket_1,size_bucket_2,liter_reach, first_bucket)
    @size_bucket_1 = size_bucket_1
    @size_bucket_2 = size_bucket_2
    @liter_reach = liter_reach
    @first_bucket = first_bucket
  end

  def moves
    minSteps(@size_bucket_1,@size_bucket_2,@liter_reach,@first_bucket)
  end

  def goal_bucket
    @goal_bucket
  end

  def other_bucket
    @other
  end

  private
  def pour(toJugCap, fromJugCap, d)
 
    # Initialize current amount of water
    # in source and destination jugs
    fromJug = fromJugCap
    toJug  = 0
 
    # Initialize steps required
    step = 1
    if ((fromJug == d) || (toJug == d))
      if fromJug == d
        @goal_bucket = @first_bucket
        @other = toJug
      else
        @goal_bucket = (['one','two'] - [@first_bucket]).first
        @other = fromJug
      end
    end
    if toJugCap == d
      @goal_bucket = (['one','two'] - [@first_bucket]).first
      @other = fromJug
      return step + 1
    end
    while ((fromJug  != d) && (toJug != d))
        # Find the maximum amount that can be
        # poured
        temp =[fromJug, toJugCap-toJug].min
        # Pour 'temp' liter from 'fromJug' to 'toJug'
        toJug = toJug + temp
        fromJug = fromJug - temp

        step =  step + 1
        if ((fromJug == d) || (toJug == d))
            if fromJug == d
              @goal_bucket = @first_bucket
              @other = toJug
            else
              @goal_bucket = (['one','two'] - [@first_bucket]).first
              @other = fromJug
            end
            break
        end
        # If first jug becomes empty, fill it
        if fromJug == 0
            fromJug = fromJugCap
            step =  step + 1
        end 
        # If second jug becomes full, empty it
        if toJug == toJugCap
            toJug = 0
            step =  step + 1
        end
      end
      return step
end
# Returns count of minimum steps needed to
# measure d liter
def minSteps(n, m, d, st)
    if (d % (n.gcd(m)) != 0)
        return -1
    end
    # Return minimum two cases:
    # a) Water of n liter jug is poured into
    #    m liter jug
    if st == 'two'
      return pour(n,m,d)
    else
      return pour(m,n,d)
    end
end
end


subject = TwoBucket.new(1, 3, 3, 'two')
p subject.moves
p subject.goal_bucket