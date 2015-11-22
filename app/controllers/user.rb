enable :sessions
# display all users
get '/users' do
  erb :'users/index'
end

# return an HTML form for creating a new user
get '/users/new' do
  erb :'users/new_form'
end

#create a new user
post '/users' do

  @user = User.new(params[:user])
  @user.password = params[:password]
  @user.save!
  redirect '/users'
end

# display a specific user
get '/users/:id' do
  "HELLO"
  erb :'users/show_user'
end

# return an HTML form for editing a user
get '/users/:id/edit' do
  @user = User.find(current_user.id)
  erb :'users/edit_form'
end

# update a specific user
put '/users/:id' do

  user_id = current_user.id
  @user.update()
  redirect "/users/#{current_user.id}"
end

# delete a user
delete '/users/:id' do
  current_user.destroy

end