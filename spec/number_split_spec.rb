require './lib/number_split'

describe "NumberSplit" do

  it "Should give split combination for the lenght provided" do
    combinations = NumberSplit.new(10).combinations
    expected_result = [[3, 3, 4], [3, 4, 3], [4, 3, 3], [5, 5], [6, 4], [4, 6], [7, 3], [3, 7], [10]]
    expect(combinations).to eq(expected_result)
  end

  it "Should give split combination for the lenght provided" do
    combinations = NumberSplit.new(9).combinations
    expected_result = [[3, 3, 3], [4, 5], [5, 4], [6, 3], [3, 6], [9]]
    expect(combinations).to eq(expected_result)
  end

  it "Should give empty combination if the lenght provided is less than min_size" do
    combinations = NumberSplit.new(2).combinations
    expected_result = []
    expect(combinations).to eq(expected_result)
  end
  
end