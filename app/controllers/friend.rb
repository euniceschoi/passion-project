# display all friends
get '/friends' do
end

# return an HTML form for creating a new friend
get '/friends/new' do
  erb :'/friends/new_friend_form'
end

#create a new friend
post '/friends' do
  # raise params.inspect
  @friend = Friend.new(params[:friend])
  @friend.save
  redirect "/users/#{current_user.id}"
end

# display a specific friend
get '/friends/:id' do
end

# return an HTML form for editing a friend
get '/friends/:id/edit' do
end

# update a specific friend
put '/friends/:id' do
end

# delete a friend
delete '/friends/:id' do
end
