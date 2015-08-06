require('rspec')
require('coin_combinations')
require('pry')

describe('String#coin_count') do
  it('inputs string of "change" you want converted and returns coin totals as string') do
  expect(("10").coin_count()).to(eq("1 dimes "))
  end
  it('inputs string "change" worth multiple coins you want converted and returns coin totals') do
  expect(("91").coin_count()).to(eq("3 quarters 1 dimes 1 nickles 1 pennies"))
  end
end


# 91
#
# 3 = 75
#
# 1 = 85
#
# 1 = 90
#
# 1 = 91
