class Channel < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged


  has_many :user_channels
  has_many :users, :through => :user_channels
end
