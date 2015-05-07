require('sinatra')
require('sinatra/reloader')
#also_reload('lib/**/*.rb')
require('./lib/definition.rb')
require('./lib/word.rb')

get('/') do
  erb(:index)
end

post('/words') do
  term = params.fetch("term")
  new_word = Word.new({:term => term})
  new_word.save
  erb(:words)
end

get('/words/:id') do
  @words = Word.all()
  erb(:words)
end


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
