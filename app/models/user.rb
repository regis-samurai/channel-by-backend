class User < ApplicationRecord
  has_secure_password

  has_many :user_channels
  has_many :channels, :through => :user_channels

  validates_length_of :password, maximum: 72, minimum: 6, allow_nil: false, allow_blank: false
  validates_presence_of :email
  validates_presence_of :name

  validates_uniqueness_of :email
  validates_uniqueness_of :name
end
