require('sinatra')
require('sinatra/reloader')
require('./lib/your_change')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
