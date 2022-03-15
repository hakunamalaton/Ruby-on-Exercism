=begin
Write your code for the 'Rail Fence Cipher' exercise in this file. Make the tests in
`rail_fence_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rail-fence-cipher` directory.
=end
class RailFenceCipher
  def self.encode(script,rails)
    return script if rails == 1 or script.empty?

    @array_of_rails = []
    rails.times do |rail|
      @array_of_rails += [[]]
    end

    state_run = [0,true]      # true: increase, false: descrease
    script.chars.each do |char|
      @array_of_rails[state_run[0]%rails] += [char]
      
      if state_run[1] && state_run[0] % rails == rails - 1
        state_run[1] = false
        #state_run[0] -= 1
      elsif !state_run[1] && state_run[0] % rails == 0
        state_run[1] = true
        #state_run[0] -= 1
      end

      state_run[0] += 1 if state_run[1]
      state_run[0] -= 1 unless state_run[1]
    end

    @array_of_rails.map do |unit_array|
      unit_array.join
    end.join
  end
  
  def self.decode(script,rails)
    return script if rails == 1 or script.empty?
    len = self.encode(script,rails).length
    
    # get array_of_rails
    @array_of_rails.each_with_index do |unit_array,index|
      @array_of_rails[index] = script.chars[0...unit_array.length]
      script = script.chars[unit_array.length..].join
    end

    result = ""
    state_run = [0,true]      # true: increase, false: descrease
    [*0...len].each do |char|
      result += @array_of_rails[state_run[0]][0]
      @array_of_rails[state_run[0]] = @array_of_rails[state_run[0]][1..]

      if state_run[1] && state_run[0] % rails == rails - 1
        state_run[1] = false
        #state_run[0] -= 1
      elsif !state_run[1] && state_run[0] % rails == 0
        state_run[1] = true
        #state_run[0] -= 1
      end

      state_run[0] += 1 if state_run[1]
      state_run[0] -= 1 unless state_run[1]
    end
    result
  end
end
