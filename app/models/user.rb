class User < ApplicationRecord
  belongs_to :doctor, optional: true
  has_many :appointments
  has_many :appointment_schedules, through: :appointments

  validates :name, :email, :photo_url, presence: true

  def token
    Knock::AuthToken.new(payload: { sub: id }).token
  end
end
