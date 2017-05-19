# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}


def first_pos(str)
  hash = Hash.new { |this_hash, key| this_hash[key] = 0}
  arr = str.split
  arr.each do |word|
    hash[word] = arr.index(word)
  end
  hash
end
