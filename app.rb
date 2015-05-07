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

post('/word/:id') do
  #word = Word.find(params.fetch("id").to_i())


  erb(:word)
end

get('/word/:id') do
  @word = Word.find(params.fetch("id").to_i())
  definition = params.fetch("new_definition")
  new_definition = Definition.new({:meaning => definition})
  new_definition.save()
  @definitions = @word.definitions(params.fetch('new_definition'))
  erb(:word)
end

# get('/words/:id/definitions') do
#   @word = Word.find(params.fetch('id').to_i)
#   word.definitions(params.fetch('definition'))
#   redirect to ("words/#{word.id}")
# end


# post("/entry") do
#   term = params.fetch("term")
#   definition = params.fetch("definition")
#   term.save(definition)
#   erb(:word_list)
# end
#
# get('/entry') do
#   id = @definitions.id()
# end
#
#   get('/entry/:id') do
#     @definition = @definition.find(params.fetch("id"))
#     erb(:entry)
#   end

# get('/entry') do
#   term = params.fetch('word')
#   definition = params.fetch('definition')
#
#   @definitions = []
#   @entry = Word.new(term)
#   @definition = Definition.new(definition)
#
#   definition.each() do
#     @definitions.push(@definition)
#   end
#
#   @dictionary_entry = Hash.new({@entry => [@definitions]})
#
#   end
#     erb(:word_definition)
# end
