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

#this is a rather long winded approach to solving this.
