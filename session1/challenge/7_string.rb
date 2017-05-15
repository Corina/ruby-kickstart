# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  str1 = ""
  i = 0
  while i < string.length - 1 do
    if string[i] == "r" || string[i] =="R" then str1 << string[i + 1] end
    i += 1
  end
  p str1
end
