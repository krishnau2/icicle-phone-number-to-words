class NumberSplit
  def initialize(length)    
    @length = length
    @min_size = 3
    @window = @min_size
  end

  def combinations
    final_combinations = []    

    while @window <= @length 
      combinations = []
      combinations.push(@window)
      remaining_length = @length - @window
      
      while remaining_length > 0 
        if remaining_length >= @min_size
          combinations.push(@min_size)
          remaining_length = remaining_length - @min_size
        else
          combinations[-1] = combinations[-1] + remaining_length
          remaining_length = 0
        end
      end

      permutations = combinations.permutation.to_a.uniq
      permutations.each{|c| final_combinations.push(c)}
      @window = @window + 1
    end

    # puts final_combinations.uniq.inspect
    return final_combinations.uniq
  end
  
  
end