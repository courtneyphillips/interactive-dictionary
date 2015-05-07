require('sinatra')
require('sinatra/reloader')
#also_reload('lib/**/*.rb')
require('./lib/definition.rb')
require('./lib/word.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

post('/words') do
  @words = Word.all
  word = params.fetch("word")
  new_word = Word.new({:term => word})
  new_word.save
  redirect to('/')
end

post('/definitions/:id') do
  @word = Word.find(params.fetch("id").to_i())
  definition = params.fetch("new_definition")
  word = params.fetch("word_id")
  new_word = Word.new({:term => word})
  new_word.define(definition)
  @definitions = new_word.definitions()
  erb(:definitions)
end

get('/definitions/:id') do
  word = params.fetch("word_id")
  @word = Word.find(params.fetch("id").to_i())
  new_word = Word.new({:term => word})
  new_definition = params.fetch("definition")
  new_word.define(new_definition)
  @definitions = new_word.definitions()
  erb(:definitions)

end

get('/word/:id') do
  @word = Word.find(params.fetch("id").to_i())
  erb(:word)
end
