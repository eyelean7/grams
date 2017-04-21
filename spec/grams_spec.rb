require ("rspec")
require ("grams")
require ("pry")

describe('String#grams') do
  # it('returns a list of letters') do
  #   expect("hi".grams("bye")).to(eq([['h', 'i'], ['b', 'y', 'e']]))
  # end
  it('creates a hash for both words') do
    expect("hi".grams("bye")).to(eq({'h'=>1, 'i'=>1}))
  end
  # it('stores') do
  #   expect("hello".grams("goodbye")).to(eq(false))
  # end
end
