require('sinatra')
require('sinatra/reloader')
require('./lib/grams')
also_reload('lib/**/*.rb')


get('/') do
  "hello world"
end

# get('/') do
#   erb(:index)
# end
#
# get('/result') do
#   @obj = params.fetch('obj')
#   @arg = params.fetch('arg')
#   @result = params.fetch('obj').grams(params.fetch('arg'))
#   erb(:result)
# end
