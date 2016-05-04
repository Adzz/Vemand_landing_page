post '/users' do
  @user = User.new(email: params[:email])
  if @user.save
    redirect '/'
  else
    flash.now[:errors] = @user.errors.full_messages
    erb :index
  end
end