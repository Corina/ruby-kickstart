# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  attr_accessor :beers

  def initialize(beers)
    if beers < 0
      @beers = 0
    elsif beers > 99
      @beers = 99
    else
      @beers = beers
    end
  end

  def print_song
    @beers.downto 1 { |x| print_current(x)}
  end

  def print_current(n)
    if n == 0
      puts ""
    else
      puts "#{to_words(n)} #{bottle(n)} of beer on the wall,\n" +
           "#{to_words(n)} #{bottle(n)} of beer,\n" +
           "Take one down, pass it around,\n" +
           "#{to_words(n-1)} #{bottle(n-1)} of beer on the wall."
    end
  end

  def bottle(n)
    n == 1 ? "bottle" : "bottles"
  end

  def to_words(n)
    teens = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    tens  = %w(twenty thirty forty fifty sixty seventy eighty ninety)
    if n >=0 && n <= 19
      "#{teens[n].capitalize}"
    elsif n % 10 == 0
      "#{tens[n / 10 -2].capitalize}"
    else
      "#{tens[n / 10 - 2].capitalize}-#{teens[n % 10]}"
    end
  end

end
