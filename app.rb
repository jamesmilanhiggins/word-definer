require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'

require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all
  erb(:index)
end

post('/') do
  word = Word.new({:word => params['word']})
  word.save
  @words = Word.all
  erb(:index)
end

get('/word/new') do
  erb(:word_form)
end

post('/word/new') do
  word = params.fetch("word")
  attributes = {:word => word}
  @new_word = Word.new(attributes)
  @new_word.save
  @words = Word.all
  erb(:index)
end
