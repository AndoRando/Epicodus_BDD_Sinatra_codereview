require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:home)
end

get('/results') do
  @word = params.fetch('word')
  @results = params.fetch('sentence').word_count(@word)
  erb(:results)
end
