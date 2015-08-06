require('rspec')
require('your_change')

describe('Fixnum#your_change') do
  it('accepts 4 cents from user and returns 4 pennies') do
     expect(4.your_change()).to(eq('4 pennies')) 
  end
end
