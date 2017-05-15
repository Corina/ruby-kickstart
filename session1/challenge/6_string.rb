# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  i = 0
  str1 = ""
  str2 = ""
  while i < string.length do
    i % 2 == 0 ? str2 << string[i] : str1 << string[i]
    i += 1
  end
  return_odds == true ? str1 : str2
end
