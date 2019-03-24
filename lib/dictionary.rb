class Dictionary
  attr_reader :words

  def initialize()
    @words = []

    File.foreach("dictionary.txt" ) do |word|
      @words.push word.chop.to_s.downcase
    end
  end
  
  def find_valid_words(combination_words)
    combination_words & @words
  end
end