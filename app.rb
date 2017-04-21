require('pry')
require('rspec')
require('./lib/anagram')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/form') do#place form 'action' in the get parentheses
 @anagram = params.fetch('word').anagram() #from the name attribute in the input tag on the form
 erb(:result)#this is the page where you want your method to display
end
