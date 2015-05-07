require('sinatra')
require('sinatra/reloader')
#also_reload('lib/**/*.rb')
require('./lib/definition.rb')
require('./lib/word.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

# post('/word') do
#   @words = Word.all
#   @word = params.fetch('word')
#   redirect to('/')
# end


post('/words') do
  @words = Word.all
  word = params.fetch("word")
  new_word = Word.new({:term => word})
  new_word.save
  redirect to('/')
end

post('/word/:id') do
  @id = params.fetch("id").to_i
  @word = Word.find(params.fetch("id").to_i())
  @definitions = @word.definitions()
  erb(:definitions)
end

get('/word/:id') do
  @word = Word.find(params.fetch("id").to_i())
  erb(:word)
end

post('/word/:id') do
  @word = Word.find(params.fetch("id").to_i())
end


# post('/definitions') do
#   new_definition = params.fetch("new_definition")
#   @word = Word.find(params.fetch("id").to_i)
#   # definition = Definition.new({:meaning => new_definition})
#   @word.define(new_definition)
#   @definitions = @word.definitions()
#   redirect to ('/word/:id')
# end
#
# get('/definitions') do
#   @word = Word.find(params.fetch("id").to_i())
#   @definitions = @word.definitions()
#   redirect to ('/word/:id')
#   end
#
#
#
#
#
#
#
# # get('/words/:id/definitions') do
# #   @word = Word.find(params.fetch('id').to_i)
# #   word.definitions(params.fetch('definition'))
# #   redirect to ("words/#{word.id}")
# # end
