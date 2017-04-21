require ("rspec")
require ("grams")
require ("pry")

describe('String#grams') do

  it('gives disappointing message when words are not anagrams') do
    expect("Boo".grams("sOon")).to(eq("These words are nothing special"))
  end

  it('confirms suspicions if words are anagrams') do
    expect("stick".grams("ticks")).to(eq("These words are anagrams"))
  end

  it('delivers joyous message upon receiving a palindrome') do
    expect("mined".grams("denim")).to(eq("These words are not only anagrams but also palindromes"))
  end

end
