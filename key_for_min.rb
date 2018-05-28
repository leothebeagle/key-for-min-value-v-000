# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'

def key_for_min_value(name_hash)
  if name_hash.size == 0
    nil
  else
  values = name_hash.collect do |name, value|
    value
  end

  until values.length == 1
    if values[0] < values[1]
      values.delete_at(1)
    elsif values[1] < values[0]
      values.delete_at(0)
    end
  end
#at this point values now only has the minimum value.
  name_hash.key(values[0])
end
end








#ikea = {:chair => 25, :table => 85, :mattress => 450}
#[85,450,25]
#compare value 1 to value 2. if value 1 < value 2 then select value 1 and compare it to value 3.
#if value 3 is less than value 1 then select that and compare it to the next value.

#we could keep track of what we are comparing.
#have a counter. so if the counter is i = 0. will keep looping while the counter is < hash.size

#well come to think of it. hashes are not in order so index numbers are useless here.
#hmm..so looks like this is what's going to happen. we will separate keys from values, and extract the values and place them in an array.
#once that happens will then compare each member of the array and select the smallest one.
#once the smallest one is selected, can then retrieve the hash key that corresponds to the value
#you could potentially retireve the hash as follows. iterate once more over the hash and write a function that detects which key corresponds to that value.
#go on little one!code your destiny!
