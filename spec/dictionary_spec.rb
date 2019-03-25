require './lib/dictionary'

describe "Dictionary" do

  it "Should load words from .txt file to memmory" do
    expect(Dictionary.new.words.count).to be > 0
  end

  it ".find_valid_words should return all the matching words" do
    @dictionary = Dictionary.new

    words = ["motor", "usual", "truck"]
    expect(@dictionary.find_valid_words(words)).to eq words
  end

  it ".find_valid_words should return only the matching words" do
    @dictionary = Dictionary.new

    words = ["motor", "usual", "xyz"]
    expect(@dictionary.find_valid_words(words)).to eq ["motor", "usual"]
  end
  
end