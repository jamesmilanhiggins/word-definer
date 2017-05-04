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

get('/word/:id') do
  @word = Word.find(params[:id].to_i)
  erb(:word)
end

get('/word/:id/definition/new') do
  @word = Word.find(params[:id].to_i)
  erb(:definition_form)
end

post('/word/:id/definition/new') do
  definition = params.fetch("definition")
  @word = Word.find(params[:id].to_i)
  @word.add_definition(definition)
  @words = Word.all
  erb(:index)
end
