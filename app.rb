require('sinatra')
require('sinatra/reloader')
require('./lib/your_change')
require('./lib/reverse_sub')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  change_input = params.fetch('change_input').to_i()
  @results = change_input.your_change()
  erb(:results)
end
