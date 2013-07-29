require 'bcrypt'

def create
	user = User.new(name: params[:user][:name], email: params[:user][:email])
	user.password = params[:password]
	user.save!

  user
end

def login
	@user = User.find_by_email(params[:email])
	if @user.password == params[:password]
	  session[:id] = @user.id
	  redirect '/'
	else
	  redirect '/'
	end
end