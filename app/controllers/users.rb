post '/users' do
	email = params["email"]
	name = params["name"]
	@user = User.new(email: params[:email], name: params[:name])
	if @user.save
		redirect '/'
	else
		flash.now[:errors] = @user.errors.full_messages
		erb :index
end
