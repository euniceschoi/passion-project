# require 'bcrypt'
class User < ActiveRecord::Base
  has_many :messages
  has_many :friendships
  has_many :friends, :through => :friendships, source: :user

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
