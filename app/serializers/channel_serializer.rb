class ChannelSerializer < ApplicationSerializer
  attributes :id,
             :name,
             :slug,
             :url

  has_many :messages
end
