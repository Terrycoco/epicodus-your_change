require('reverse_sub')
require('rspec')

describe('String#reverse_sub') do
  it('takes string and searches for last instance and replaces') do
    expect('little'.reverse_sub('l','x')).to(eq('littxe'))
  end
end
