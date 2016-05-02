post '/users' do
  @user = User.new(email: params[:email])
  if @user.save
    redirect to('/')
  else
    flash.now[:error] = @user.errors.full_messages
    erb :index
  end
end