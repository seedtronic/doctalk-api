class User < ApplicationRecord
  validates :name, :email, :photo_url, presence: true
end
