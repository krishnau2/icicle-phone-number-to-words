class NumberSplit
  def initialize(length)    
    @length = length
    @min_size = 3
    @window = @min_size
  end

  # Will generate the split based on the length and min_size
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
          # If remianing legth is less than min_size add the reamining to the last.
          combinations[-1] = combinations[-1] + remaining_length
          remaining_length = 0
        end
      end

      # Taking the permutation of the combinations generated since position of the elements in the combination is needed.
      # eg: [3, 3, 4], [3, 4, 3] & [4, 3, 3] are different. combination considers it as same.
      permutations = combinations.permutation.to_a.uniq
      permutations.each{|c| final_combinations.push(c)}
      @window = @window + 1
    end

    return final_combinations.uniq
  end
  
end