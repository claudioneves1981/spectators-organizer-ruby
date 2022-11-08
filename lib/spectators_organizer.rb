class SpectatorsOrganizer
  def evaluate(spectators)
    temp = 0
    result = Array.new(30){Array.new(2)}   
    x = 0
    for i in 0...spectators[0].length do
      for j in 0...spectators.length do
        if j+1 < spectators.length && spectators[j+1][i] - temp <= 0
          result[x][0] = j+1
          result[x][1] = i 
          x = x + 1
         elsif j+1 < spectators.length && spectators[j+1][i] - temp > 0
         temp = spectators[j+1][i]
        end
      end
      temp = spectators[0][i]
    end
    result.delete_if {|x, *_| x == nil }
    result.sort
  end

  
end