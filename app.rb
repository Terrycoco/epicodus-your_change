require('sinatra')
require('sinatra/reloader')
require('./lib/reverse_sub')
require('./lib/your_change')

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  change_input = params.fetch('change_input').to_i()
  @results = change_input.your_change()
  erb(:results)
end
