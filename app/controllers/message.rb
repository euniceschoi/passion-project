# display all messages
get '/messages' do
end

# return an HTML form for creating a new message
get '/messages/new' do
end


  # response = Unirest.get "https://montanaflynn-l33t-sp34k.p.mashape.com/encode?text=Make+me+sound+like+a+script+kiddie.",
  #   headers:{
  #     "X-Mashape-Key" => "JTCWKL8KaUmshvRLqWdCoWethkvyp1cw2v9jsnJCSmAKMPb5bM",
  #     "Accept" => "text/plain"
  #   }

#create a new message
post '/messages' do

  p params

  input = params[:content].gsub! /\s+/, '+'
  yoda_speak_key = ENV['YODA_SPEAK_KEY']



  text_response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=#{input}",
  headers:{
    "X-Mashape-Key" => yoda_speak_key,
    "Accept" => "text/plain"
  }


  @message = Message.new(content: text_response.body, user_id:current_user.id)
  @message.save

  @friend_phone_number = params[:phone_number]
  @text_message = text_response.body

  account_sid = ENV['ACCOUNT_TWILIO_SID']
  auth_token = ENV['AUTH_TWILIO_TOKEN']

  client = Twilio::REST::Client.new account_sid, auth_token


  # from = "+14156504015" # Your Twilio number

    client.account.messages.create({
      :from => '+14156504015',
      :to => @friend_phone_number,
      :body => @text_message,
    })
    # puts "Sent message to Chris"
  return @text_message
  # redirect "/users/#{current_user.id}"
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
