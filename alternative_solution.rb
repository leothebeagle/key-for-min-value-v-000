
def key_for_min_value(Hash)
  lowest_key = nil
  lowest_value = nil
#ikea = {:chair => 25, :table => 85, :mattress => 450}
  hash.each do |key, value|
    if lowest_value == nil || value < lowest_value
      lowest_value = value
      lowest_key = key
    end
    lowest_key
end
#this is by far the more elegant solution when compared to what I came up with haha.
