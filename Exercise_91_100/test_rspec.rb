require_relative './test.rb'

data_set = [
  {
    input: {
      capacity: 16,
      items: {
          A: [3,6,10]
      }
    },
    output: 20
  },
  {
    input: {
        capacity: 16,
        items: {
          A: [3,4,10],
          B: [5,1,16] 
        }
    },
    output: 100
  }

]

RSpec.describe "KnapSack#execute" do
  
  data_set.each_with_index do |data,index|
    it "example #{index} must equal to #{data[:output]}" do 
      max_value = KnapSack.new(data[:input][:capacity], data[:input][:items]).execute
      expect(max_value).to eq data[:output]
    end
  end
end