#get_login_form
get '/sessions/new' do
  redirect "/users/"
end

#post_form
post '/sessions' do
  # raise params.inspect
  @user = User.find_by_email(params[:email])
    if @user && @user.password == params[:password]
      p "*" * 50

      session[:id] = @user.id
      p "hit here"
      redirect "/users/#{@user.id}"
    else
      redirect "/users"
    end
end

#delete session
delete '/sessions/:id' do
  current_user = nil
  session[:id] = nil
  redirect '/'
end

#sessions to debug
get '/sessions' do
  session.inspect
end
