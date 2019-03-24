require_relative 'number_split'
require_relative 'dictionary'

class WordGenerator
  NUMBER_TO_LETTER_MAP = {
    "2" => ["a", "b", "c"],
    "3" => ["d", "e", "f"],
    "4" => ["g", "h", "i"],
    "5" => ["j", "k", "l"],
    "6" => ["m", "n", "o"],
    "7" => ["p", "q", "r", "s"],
    "8" => ["t", "u", "v"],
    "9" => ["w", "x", "y", "z"]
  }


  def initialize(number)
    @number = number
    @length = number.length
    @letter_maps = letter_mapping_for_number
    @number_split_cominations = []
    @dictionary = Dictionary.new
    @words = []
    @combination_words = []
    @final_combination_words = []
  end

  def generate    
    @number_split_cominations = NumberSplit.new(@length).combinations
    # @number_split_cominations = [[3, 3, 4]]
    
    @number_split_cominations.each do | split | #[3, 3, 4]
      puts "Split: #{split}"
      @words = []
      starting_pointer = 0;      
      
      split.each do |word_length|
        ending_pointer = starting_pointer + word_length

        letter_map = @letter_maps[starting_pointer...ending_pointer]
        starting_pointer = ending_pointer

        split_word_combinations = letter_map.shift.product(*letter_map).map(&:join)

        valid_words = find_valid_words(split_word_combinations)

        if valid_words.length == 0

          @words = []
          puts "Breaking....."
          break  
        end

        @words << valid_words
      end
      puts "Words: #{@words.inspect}"

      @combination_words << @words unless @words.empty?
    end

    # puts "Combination Words: #{@combination_words.inspect}"

    @combination_words.each do |combination|
      combination.shift.product(*combination).each do |combi|
        @final_combination_words << combi
      end      
    end

    return @final_combination_words
  end

  def find_valid_words(word_combination)    
    valid_words = @dictionary.find_valid_words(word_combination)
    valid_words.uniq
  end

  def letter_mapping_for_number
    @number.split('').map { |number| NUMBER_TO_LETTER_MAP[number] }
  end

  
  
end



# k = WordGenerator.new("6686787825")
# mapping = k.letter_mapping_for_number
# puts mapping.inspect

