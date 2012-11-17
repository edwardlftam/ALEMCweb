# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  username         :string(255)
#  email            :string(255)
#  password         :string(255)
#  password_confirm :string(255)
#  password_digest  :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  administrator    :boolean
#

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
