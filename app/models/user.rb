class User < ApplicationRecord
  validates :name, :email, :photo_url, presence: true

  has_secure_token
end
