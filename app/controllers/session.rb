#get_login_form
get '/sessions/new' do
  erb :_login, layout: false
end

#post_form
post '/sessions' do
  p params
  if request.xhr?
    session[:id] = User.authenticate(params)
    erb :_header, layout: false
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