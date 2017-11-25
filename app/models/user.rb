class User < ApplicationRecord
  validates :name, :email, :photo_url, presence: true

  def token
    Knock::AuthToken.new(payload: { sub: id }).token
  end
end
