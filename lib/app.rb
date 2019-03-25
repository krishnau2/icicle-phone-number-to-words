require_relative 'word_generator'

class App
  def initialize
    @number = "";
    @words = []
  end

  def take_input_number
    puts "Please Enter the phone number"
    @number = gets.strip

    if @number.empty?
      print_empty_message
    elsif @number.include?('0') || @number.include?('1')
      print_number_not_valid_message
    else
      print_loading_message
      @words = WordGenerator.new(@number).generate
      puts @words.inspect
    end
  end

  def print_empty_message
    puts "Number can't be empty."
  end

  def print_number_not_valid_message
    puts "Not a valid number. (Number should not conain '0' or '1')"
  end

  def print_loading_message
    puts "Generating words from #{@number}, Please wait."
  end
  
end

App.new.take_input_number