class User < ApplicationRecord
  belongs_to :doctor, optional: true

  validates :name, :email, :photo_url, presence: true

  def token
    Knock::AuthToken.new(payload: { sub: id }).token
  end
end
