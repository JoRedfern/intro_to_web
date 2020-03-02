require "sinatra"
set :session_secret, 'super secret'

get "/" do
  "Hello World"
end

get "/secret" do
  "shh don't tell"
end

get "/thirdcheck" do
"has this really really updated?"
end

get "/random-cat" do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post "/named-cat" do
  p params[:name]
  @name = params[:name]
  erb(:index)
end
get '/cat-form' do
  erb :cat_form
end
