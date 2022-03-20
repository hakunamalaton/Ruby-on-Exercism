require_relative './test'
data_set = [
  {
      input: {
        matrix_size: [3,2],
        x: 0,
        y: 0,
      },
      output: true
  },
  {
    input: {
      matrix_size: [3,3],
      x: 0,
      y: 0,
    },
    output: false
},
{
  input: {
    matrix_size: [3,3],
    x: 1,
    y: 1,
  },
  output: false
},
{
  input: {
    matrix_size: [3,3],
    x: 0,
    y: 1,
  },
  output: true
},
{
  input: {
    matrix_size: [3,3],
    x: 1,
    y: 0,
  },
  output: true
},
{
  input: {
    matrix_size: [4,3],
    x: 0,
    y: 0,
  },
  output: true
},
{
  input: {
    matrix_size: [4,3],
    x: 0,
    y: 1,
  },
  output: true
},
{
  input: {
    matrix_size: [4,3],
    x: 1,
    y: 0,
  },
  output: true
},
{
  input: {
    matrix_size: [4,3],
    x: 1,
    y: 1,
  },
  output: true
},
{
  input: {
    matrix_size: [4,3],
    x: 1,
    y: 2,
  },
  output: true
},
]
RSpec.describe 'BreakSocola#play:' do
  data_set.each_with_index do |test_case, i|
    example "result for test case ##{i} should eq #{test_case[:output]}" do
      win_player = BreakSocola.new(test_case[:input][:matrix_size], test_case[:input][:x], test_case[:input][:y])
      win_player = win_player.play(win_player.four_direction,true)
      expect(win_player).to eq test_case[:output]
    end
  end
end
