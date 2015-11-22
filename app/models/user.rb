# require 'bcrypt'
class User < ActiveRecord::Base
  has_many :messages
  has_many :friendships
  has_many :friends, :through => :friendships, source: :user

  validates :first_name, :last_name, :email, :username, :phone_number, :password_hash, presence: true

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
