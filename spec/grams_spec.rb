require ("rspec")
require ("grams")
require ("pry")

describe('String#grams') do

  it('gives disappointing message when words are not anagrams') do
    expect("Boo".grams("sOon")).to(eq("These words are nothing special."))
  end

  it('confirms suspicions if words are anagrams') do
    expect("stick".grams("ticks")).to(eq("These words are anagrams! That seems special."))
  end

  it('delivers joyous message upon receiving a palindrome') do
    expect("mined".grams("denim")).to(eq("These words are not only anagrams but also palindromes 0.o"))
  end
  it('ignores spaces') do
    expect("m ine d".grams("denim")).to(eq("These words are not only anagrams but also palindromes 0.o"))
  end
  it('does not allow words without vowels') do
    expect("mdskj".grams("feel")).to(eq("Hey... that's not even a word! Try again."))
  end
  it('checks for antigrams') do
    expect("hi".grams("bye")).to(eq("No letters match! You have an antigram."))
  end
  it('ignores symbols') do
    expect("aren't".grams("Taren")).to(eq("These words are anagrams! That seems special."))
  end
end
