require './lib/dictionary'

describe "Dictionary" do

  it "Should load words from .txt file to memmory" do
    expect(Dictionary.new.words.count).to be > 0
  end

  # it ".is_valid_word?(text) should return true for valid word" do
  #   expect(Dictionary.new.is_valid_word?("motor")).to be true
  # end

  # it ".is_valid_word?(text) should return false for invalid word" do
  #   expect(Dictionary.new.is_valid_word?("mmm")).to be false
  # end
  
end