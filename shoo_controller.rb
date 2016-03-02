require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/shoe')



get '/shoo/new' do
  erb(:land)
end


post '/shoo'  do
  @shoe = Shoe.new(params)
  @shoe.save
  erb(:ordered)
end

get '/shoo' do
@shoes = Shoe.all
erb(:index)
end