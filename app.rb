require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/interactive_dictionary')

# get('/') do
#   erb(:index)
# end

get('/entry') do
  term = params.fetch('word')
  definition = params.fetch('definition')
  @entry = Word.new(term)
  @definition = Definition.new(definition)
  

  end
    erb(:word_definition)
end
