=begin
Write your code for the 'Two Bucket' exercise in this file. Make the tests in
`two_bucket_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/two-bucket` directory.
=end
class TwoBucket
    @@state = [0,0]
    @@move = 0
    def initialize(size_bucket_1,size_bucket_2,liter_reach, first_bucket)
      @size_bucket_1 = size_bucket_1
      @size_bucket_2 = size_bucket_2
      @liter_reach = liter_reach
      @first_bucket = first_bucket
      if @first_bucket == 'one'
        @@state[0] += @size_bucket_1
        @@move += 1
      else
        @@state[1] += @size_bucket_2
        @@move += 1
      end
    end
  
    def moves
      return change_state_bucket(@@state[0],@@state[1],@liter_reach,@first_bucket)
    end


    private
    def change_state_bucket(liter_in_bucket_1,liter_in_bucket_2,liter_to_reach, first_bucket)
      if liter_in_bucket_1 == liter_to_reach || liter_in_bucket_2 == liter_to_reach
        return @@move
      end
      
      if liter_in_bucket_1 == @@state[0]
        
      elsif liter_in_bucket_2 == @@state[1]

      else

      end

    end
  end


  subject = TwoBucket.new(3, 5, 1, 'one')
  p subject.moves