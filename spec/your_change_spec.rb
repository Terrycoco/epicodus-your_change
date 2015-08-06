require('rspec')
require('your_change')

describe('Fixnum#your_change') do
  it('accepts an amount and returns how many quarters') do
    expect(50.your_change()).to(eq('2 quarters'))
    expect(25.your_change()).to(eq('1 quarter'))
  end

  it('accepts an amount and returns how many dimes') do
    expect(70.your_change()).to(eq('2 quarters and 2 dimes'))
    expect(60.your_change()).to(eq('2 quarters and 1 dime'))
  end

  it('accepts an amount and returns how many nickels') do
    expect(65.your_change()).to(eq('2 quarters, 1 dime and 1 nickel'))
  end

  it('accepts and amount and returns how many pennies') do
    expect(67.your_change()).to(eq('2 quarters, 1 dime, 1 nickel and 2 pennies'))
    expect(1.your_change()).to(eq('1 penny'))
  end
end
