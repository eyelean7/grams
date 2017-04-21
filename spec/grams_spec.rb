require ("rspec")
require ("grams")
require ("pry")

describe('String#grams') do
  it('returns a list of letters') do
    expect("hi".grams("bye")).to(eq(['h', 'i']))
  end
  # it('creates a hash for both words') do
  #   expect("hi".grams("bye")).to(eq({'h'=>0, 'i'=>0},{'b'=>0, 'y'=>0, 'e'=>0}))
  # end
  # it('stores') do
  #   expect("hello".grams("goodbye")).to(eq(false))
  # end
end
