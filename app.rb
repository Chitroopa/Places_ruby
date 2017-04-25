require('pry')
require('launchy')
require('sinatra')
require('sinatra/reloader')
require('./lib/places')
also_reload('./**/*.rb')

get('/') do
  # Places.clear()
  erb(:index)
end

post('/reset') do
  Places.clear()
  erb(:reset)
end

post('/result') do
  test_places= Places.new(params.fetch('places'), params.fetch('time'))
  test_places.save()
  @places_list = Places.all()
  erb(:result)
end
