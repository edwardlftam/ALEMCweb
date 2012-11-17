class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirm
  has_secure_password
  before_save { |user| user.email = email.downcase }

  validates :username, presence: true, length: { maximum: 256 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
 
  validates :password, presence:true, length: { minimum: 6 } 
  validates :password_confirm, presence:true

end
