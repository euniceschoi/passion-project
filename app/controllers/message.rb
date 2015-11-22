# display all messages
get '/messages' do
end

# return an HTML form for creating a new message
get '/messages/new' do
end

#create a new message
post '/messages' do

  account_sid = "AC62876955ac4c07b2eb179831371601bb"
  auth_token = "f9fbd7fa9313762c70d39f26a6a49dd3"
  client = Twilio::REST::Client.new account_sid, auth_token


  # from = "+14156504015" # Your Twilio number

    client.account.messages.create({
      :from => '+14156504015',
      :to =>'+16786224557',
      :body => 'FUCK YOU!',
    })
    puts "Sent message to Chris"
end

# display a specific message
get '/messages/:id' do
end

# return an HTML form for editing a message
get '/messages/:id/edit' do
end

# update a specific message
put '/messages/:id' do
end

# delete a message
delete '/messages/:id' do
end
