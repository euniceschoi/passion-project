#get_login_form
get '/sessions/new' do
  redirect "/users/"
end

#post_form
post '/sessions' do
  @user = User.find_by_email(params[:email])
    if @user && @user.password_hash == params[:password]
      session[:id] = @user.id
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
