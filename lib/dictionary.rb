class Dictionary
  attr_reader :words

  def initialize()
    @words = []

    File.foreach("dictionary.txt" ) do |word|
      @words.push word.chop.to_s.downcase
    end
  end
  
  def is_valid_word?(word)
    @words.include?(word)
  end
end