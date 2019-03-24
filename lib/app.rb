require_relative 'word_generator'

class App
  def initialize
    @number = "";
    @words = []
  end

  def take_input_number
    puts "Please Enter the phone number"
    @number = gets.strip    
    print_loading_message

    # @words = WordGenerator.new(@number).generate
    @words = WordGenerator.new("6686787825").generate
    # @words = WordGenerator.new("2282668687").generate
    puts @words.inspect
  end

  def print_loading_message
    puts "Generating words from #{@number}, Please wait."
  end
  
end

App.new.take_input_number