require('rspec')
require('your_change')
require('reverse_sub')
require('pry')

apology = 'Sorry! We are out of'

describe('Fixnum#your_change') do
  it('accepts an amount and returns how many quarters') do
    expect(75.your_change()).to(eq("#{apology} quarters. Your change is: 2 quarters, 2 dimes and 1 nickel"))
    expect(50.your_change()).to(eq('2 quarters'))
    expect(25.your_change()).to(eq('1 quarter'))
  end

  it('accepts an amount and returns how many dimes') do
    expect(80.your_change()).to(eq("#{apology} quarters and dimes. Your change is: 2 quarters, 2 dimes and 2 nickels"))
    expect(60.your_change()).to(eq('2 quarters and 1 dime'))
  end

  it('accepts an amount and returns how many nickels') do
    expect(65.your_change()).to(eq('2 quarters, 1 dime and 1 nickel'))
    expect(90.your_change()).to(eq("#{apology} quarters and dimes. Your change is: 2 quarters, 2 dimes and 4 nickels"))
  end

  it('accepts and amount and returns how many pennies') do
    expect(99.your_change()).to(eq("#{apology} quarters, dimes and nickels. Your change is: 2 quarters, 2 dimes, 4 nickels and 9 pennies"))
    expect(67.your_change()).to(eq('2 quarters, 1 dime, 1 nickel and 2 pennies'))
    expect(1.your_change()).to(eq('1 penny'))
  end
end
