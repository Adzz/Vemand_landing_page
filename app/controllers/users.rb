post '/users' do
  p params
  @user = User.new(email: params[:email])
  if @user.save
    redirect '/'
  else
    flash.now[:error] = @user.errors.full_messages
    erb :index
  end
end