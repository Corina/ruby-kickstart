# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(*n)
  arr = n.to_a
  switch = arr[0]
  arr.delete_at(0)
  arr_pairs = arr.each_slice(2).to_a
  result = []

  if switch == true
    arr_pairs.each do |x, y|
      !!x != !!y ? result << true : result << false
    end
  else
    arr_pairs.each do |x, y|
      !!x == !!y ? result << true : result << false
    end
  end

 result
end
