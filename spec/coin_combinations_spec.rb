require('rspec')
require('coin_combinations')
require('pry')

describe('String#coin_count') do
  it('inputs string of "change" you want converted and returns coin totals as string') do
  expect(("10").coin_count()).to(eq("0quarters1dimes0nickles0pennies"))
  end
end
