require ("rspec")
require ("grams")
require ("pry")

describe('String#grams') do
  # it('returns a list of letters') do
  #   expect("hi".grams("bye")).to(eq([['h', 'i'], ['b', 'y', 'e']]))
  # end
  # it('creates a hash for both words') do
  #   expect("hi".grams("bye")).to(eq([{"h"=>1, "i"=>1}, {"b"=>1, "y"=>1, "e"=>1}]))
  # end
  # it('stores correct number of letters in words') do
  #   expect("boo".grams("soon")).to(eq([{"b"=>1, "o"=>2}, {"s"=>1, "o"=>2, "n"=>1}]))
  # end
  # it('disregards case') do
  #   expect("Boo".grams("sOon")).to(eq([{"b"=>1, "o"=>2}, {"s"=>1, "o"=>2, "n"=>1}]))
  # end
  # it('returns false if words are not anagrams') do
  #   expect("hello".grams("goodbye")).to(eq(false, false))
  # end
  # it('returns true if words are anagrams') do
  #   expect("stick".grams("ticks")).to(eq(true, false))
  # end
  # it('returns true if words are anagrams') do
  #   expect("shuttle".grams("ttulesh")).to(eq(true, false))
  # end
  it('returns true if words are palindromes') do
    expect("mined".grams("denim")).to(eq( true))
  end
end
