
get '/' do
  @users = User.all
  erb :index
end

#----------- LOGIN USER  -----------

get '/sessions/new' do
  erb :sign_in
end

post '/sessions' do
  login
end

delete '/sessions/:id' do
  session.destroy
end

#----------- CREATE -----------

get '/users/new' do
  erb :sign_up
end

post '/users' do
  user = create
  session[:id] = user.id
  redirect '/'
end

