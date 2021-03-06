# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    str = ""
    self.length.times do |index|
      next if index.odd?
      str << self[index]
    end
    str
  end
end
